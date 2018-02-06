//Testbench definition for Mux8Way16
module tb_mux8_2;
wire [7:0] t_out;
reg [7:0] t_in_a, t_in_b;
reg t_sel;

mux8_2 dut(.in_a(t_in_a), .in_b(t_in_b), .sel(t_sel), .out(t_out));

initial
begin
$monitor(t_in_a, t_in_b, t_sel, t_out);

t_in_a = 8'b10101010;
t_in_b = 8'b01010101;
t_sel = 1'b0;

#5
t_sel = 1'b0;

#5 
t_sel = 1'b1;

#5
t_sel = 1'b0;

#5 
t_sel = 1'b1;

end
endmodule