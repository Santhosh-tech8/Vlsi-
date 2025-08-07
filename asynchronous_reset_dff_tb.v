module asynchronous_reset_dff_tb;
reg clk, rst, d;
wire q;
asynchronous_reset_dff uut(.clk(clk), .rst(rst), .d(d), .q(q));
initial begin
  $dumpfile("asynchronous_reset_dff.vcd");
  $dumpvars(0, asynchronous_reset_dff_tb);
  clk = 0; forever #5 clk = ~clk;
end
initial begin
  rst = 1; d = 0; #5;
  rst = 0; d = 1; #10;
  d = 0; #10;
  rst = 1; #5;
  rst = 0; #10;
  $finish;
end
endmodule