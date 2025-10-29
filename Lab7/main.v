`default_nettype none

module main(
    input         MAX10_CLK1_50,   // 50 MHz clock
    input  [9:0]  SW,              // switches
    output [9:0]  LEDR,            // LEDs
    inout  [35:0] GPIO,            // GPIO pins
    output [7:0]  HEX0,            // rightmost 7seg
    output [7:0]  HEX1,
    output [7:0]  HEX2,
    output [7:0]  HEX3,
    output [7:0]  HEX4
);

    wire w_clk = MAX10_CLK1_50;

    // UART RX
    wire        RxD_data_ready;
    wire [7:0]  RxD_data;
    reg  [7:0]  GPout;

    async_receiver RX (
        .clk(w_clk),
        .RxD(GPIO[35]),
        .RxD_data_ready(RxD_data_ready),
        .RxD_data(RxD_data)
    );

    always @(posedge w_clk)
        if (RxD_data_ready)
            GPout <= RxD_data;

    // UART TX (echo back)
    async_transmitter TX (
        .clk(w_clk),
        .TxD_start(RxD_data_ready),
        .TxD_data(RxD_data),
        .TxD(GPIO[33]),
        .TxD_busy()
    );

    // ASCII → 7seg
    wire [7:0] w_char2seg;
    char2seg Display (
        .char(GPout),
        .HEX0(w_char2seg)
    );

    // 3s Counter
    wire timer_done_pulse;
    wire timer_enable;

    counter_3s u_counter_3s (
        .i_clk        (w_clk),
        .i_begin_timer(timer_enable),
        .o_done_pulse (timer_done_pulse)
    );

    // FSM
    wire [7:0] fsm_hex0;
    wire       celebrating;
    wire       celebrating_now;

    FSM_WordDetector word_detector (
        .clk               (w_clk),
        .reset             (SW[9]),
        .letter_done_pulse (RxD_data_ready),
        .char2seg          (w_char2seg),
        .timer_done_pulse  (timer_done_pulse),
        .timer_enable      (timer_enable),
        .HEX0              (fsm_hex0),
        .celebrating       (celebrating),
        .celebrating_now   (celebrating_now)
    );

    // Pattern2 for LED rotation
    wire [9:0] w_pattern_counter;

    Pattern2 #(.DIV_BITS(22)) rotating_leds ( // slower visual speed
        .clk (w_clk),
        .rst (~celebrating_now), // reset when not celebrating
        .en  (celebrating_now),  // active only during celebration
        .dir (1'b1),             // fixed to rotate left
        .counter (w_pattern_counter)
    );

    // Use Pattern2 output to drive LEDs visually
    assign LEDR = w_pattern_counter;

    // 7-seg encodings for HELLO
    localparam [7:0] H_SEG = 8'b10001001;
    localparam [7:0] E_SEG = 8'b10000110;
    localparam [7:0] L_SEG = 8'b11000111;
    localparam [7:0] O_SEG = 8'b10100011;
    localparam [7:0] BLANK = 8'hFF;

    // During celebration, display HELLO; otherwise show current char
    assign HEX4 = celebrating_now ? H_SEG  : BLANK;
    assign HEX3 = celebrating_now ? E_SEG  : BLANK;
    assign HEX2 = celebrating_now ? L_SEG  : BLANK;
    assign HEX1 = celebrating_now ? L_SEG  : BLANK;
    assign HEX0 = celebrating_now ? O_SEG  : fsm_hex0;

endmodule

`default_nettype wire
