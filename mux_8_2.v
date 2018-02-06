module mux8_2(in_a, in_b, sel, out);

	input [7:0] in_a, in_b;
	input sel;
	output reg [7:0] out;

always @(sel)
  begin
        case (sel)
        1'b0 : out = in_a;
        1'b1 : out = in_b;
	   default out = 8'b00000000;
        endcase
  end

endmodule