module bitwise_alu_tb;
reg [3:0] a, b;
reg [1:0] sel;
wire [3:0] y;
bitwise_alu uut (.a(a), .b(b), .sel(sel), .y(y));
initial begin
  $dumpfile("bitwise_alu.vcd");
  $dumpvars(0, bitwise_alu_tb);
  a = 4'b1100; b = 4'b1010;
  sel = 2'b00;
  #10 sel = 2'b01;
  #10 sel = 2'b10;
  #10 sel = 2'b11;
  #10 $finish;
end
endmodule