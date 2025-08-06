module sr_ff_tb;
reg clk, s, r;
wire q;
sr_ff uut (.clk(clk), .s(s), .r(r), .q(q));
initial begin
  $dumpfile("sr_ff.vcd");
  $dumpvars(0, sr_ff_tb);
  clk = 0; s = 0; r = 0;
  #5 s = 1; r = 0; clk = 1; #5 clk = 0;
  #5 s = 0; r = 1; clk = 1; #5 clk = 0;
  #5 s = 1; r = 1; clk = 1; #5 clk = 0;
  #10 $finish;
end
endmodule