module barrel_shifter_left_tb;
reg [3:0] in;
reg [1:0] shamt;
wire [3:0] out;
barrel_shifter_left uut(.in(in), .shamt(shamt), .out(out));
initial begin
  $dumpfile("barrel_shifter_left.vcd");
  $dumpvars(0, barrel_shifter_left_tb);
  in = 4'b1010;
  shamt = 2'b00; #10;
  shamt = 2'b01; #10;
  shamt = 2'b10; #10;
  shamt = 2'b11; #10;
  $finish;
end
endmodule