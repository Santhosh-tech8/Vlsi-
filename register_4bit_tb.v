module register_4bit_tb;
reg clk;
reg [3:0] d;
wire [3:0] q;
register_4bit uut (.clk(clk), .d(d), .q(q));
initial begin
  $dumpfile("register_4bit.vcd");
  $dumpvars(0, register_4bit_tb);
  clk = 0; d = 4'b0000;
  #5 d = 4'b1010; clk = 1; #5 clk = 0;
  #5 d = 4'b1100; clk = 1; #5 clk = 0;
  #10 $finish;
end
endmodule