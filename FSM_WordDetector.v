`default_nettype none

module FSM_WordDetector(
    input  wire        clk,                // clock
    input  wire        reset,              // sync reset -> P1
    input  wire        letter_done_pulse,  // strobe: new char received
    input  wire [7:0]  char2seg,           // 7seg pattern for that char

    input  wire        timer_done_pulse,   // 1-clk pulse from counter_3s
    output reg         timer_enable,       // assert while celebrating_now

    output reg  [7:0]  HEX0,               // pattern for HEX0
    output reg         celebrating,        // high while state is actually P6
    output reg         celebrating_now     // high as soon as 'O' completes HELLO
);

    // States
    localparam [2:0]
        P1 = 3'd0,
        P2 = 3'd1,
        P3 = 3'd2,
        P4 = 3'd3,
        P5 = 3'd4,
        P6 = 3'd5;  // celebration

    // 7-seg encodings for H, E, L, O
    localparam [7:0] H_SEG = 8'b10001001;
    localparam [7:0] E_SEG = 8'b10000110;
    localparam [7:0] L_SEG = 8'b11000111;
    localparam [7:0] O_SEG = 8'b10100011;

    reg [2:0] state, next_state;

    // Next-state logic (pattern detection)
    always @(*) begin
        next_state = state;

        case (state)
            P1: begin
                if (letter_done_pulse) begin
                    if (char2seg == H_SEG)
                        next_state = P2;
                    else
                        next_state = P1;
                end
            end

            P2: begin
                if (letter_done_pulse) begin
                    if (char2seg == E_SEG)
                        next_state = P3;
                    else if (char2seg == H_SEG)
                        next_state = P2;
                    else
                        next_state = P1;
                end
            end

            P3: begin
                if (letter_done_pulse) begin
                    if (char2seg == L_SEG)
                        next_state = P4;
                    else if (char2seg == H_SEG)
                        next_state = P2;
                    else
                        next_state = P1;
                end
            end

            P4: begin
                if (letter_done_pulse) begin
                    if (char2seg == L_SEG)
                        next_state = P5;
                    else if (char2seg == H_SEG)
                        next_state = P2;
                    else
                        next_state = P1;
                end
            end

            P5: begin
                if (letter_done_pulse) begin
                    if (char2seg == O_SEG)
                        next_state = P6;   // word complete
                    else if (char2seg == H_SEG)
                        next_state = P2;
                    else
                        next_state = P1;
                end
            end

            P6: begin
                // stay celebrating until timer says done
                if (timer_done_pulse)
                    next_state = P1;
                else
                    next_state = P6;
            end

            default: begin
                next_state = P1;
            end
        endcase
    end

    // State register
    always @(posedge clk) begin
        if (reset)
            state <= P1;
        else
            state <= next_state;
    end


    wire entering_P6_now;
    assign entering_P6_now =
        (state      != P6) &&
        (next_state == P6) &&
        (letter_done_pulse);

    // already_in_P6 is true after state has latched to P6
    wire already_in_P6;
    assign already_in_P6 = (state == P6);

    // celebrating_now goes high either when we just finished "HELLO"
    // OR while we are holding celebration in P6
    wire celebrating_now_wire;
    assign celebrating_now_wire = entering_P6_now || already_in_P6;

    // Output logic (combinational)
    always @(*) begin
        // defaults for non-celebration
        HEX0               = char2seg;   // show live char normally
        celebrating        = already_in_P6;
        celebrating_now    = celebrating_now_wire;
        timer_enable       = 1'b0;

        if (celebrating_now_wire) begin
            HEX0         = 8'h7F;  // special pattern after HELLO
            timer_enable = 1'b1;   // keep timer running while celebrating_now
        end
    end

endmodule

`default_nettype wire
