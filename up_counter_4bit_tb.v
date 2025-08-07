module up_counter_4bit_tb;
reg clk, rst;
wire [3:0] count;
up_counter_4bit uut(.clk(clk), .rst(rst), .count(count));
initial begin
  $dumpfile("up_counter_4bit.vcd");
  $dumpvars(0, up_counter_4bit_tb);
  clk = 0; forever 
  #5 
  clk = ~clk;
end
initial begin
  rst = 1; #12;
  rst = 0; #60;
  $finish;
end
endmodule