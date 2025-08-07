module synchronous_reset_dff_tb;
reg clk, rst, d;
wire q;
synchronous_reset_dff uut(.clk(clk), .rst(rst), .d(d), .q(q));
initial begin
  $dumpfile("synchronous_reset_dff.vcd");
  $dumpvars(0, synchronous_reset_dff_tb);
  clk = 0; forever #5 clk = ~clk;
end
initial begin
  rst = 1; d = 0; #12;
  rst = 0; d = 1; #10;
  d = 0; #10;
  rst = 1; #10;
  $finish;
end
endmodule