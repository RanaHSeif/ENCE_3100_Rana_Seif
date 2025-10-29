
`default_nettype none

module FSM_HDetector(
	input clk,
	input reset,
	input [7:0] RxD_data,
	input [7:0] char2seg,
	input counter_done,
	input counter_start,
	output [7:0] HEX0,
	output ledFlag
);

	reg [1:0] state, next_state;

	// States
	localparam [1:0] P1 = 2'b00, P2 = 2'b01, P3 = 2'b10; 

	// 1. State Register (sequential)
	always @(posedge clk) begin
		if(reset)
			state <= P1;
		else
			state <= next_state;
	end
	
	// 2. Next-State Logic (combinational)
	always @(*) begin
		
		next_state = P1; // default
	
		case(state)
			P1: next_state = (RxD_data == 8'd104) ? P2 : P1; // if h is detected, go to detected state, else remain in undetected state
			P2: next_state = P2;
		endcase
	end
	
	// 3. Output Logic (combinational)
	
	assign HEX0 = (state == P2) ? 8'h7F : char2seg;
	assign ledFlag = (state == P2) ? 1'b1 : 1'b0;

endmodule

`default_nettype wire