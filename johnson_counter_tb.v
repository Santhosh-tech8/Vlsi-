module johnson_counter_tb;
reg clk, rst;
wire [3:0] out;
johnson_counter uut (.clk(clk), .rst(rst), .out(out));
initial begin
  $dumpfile("johnson_counter.vcd");
  $dumpvars(0);
  clk = 0; rst = 1;
  #5 rst = 0;
  repeat(10) begin
    #5 clk = ~clk;
  end
  #10 $finish;
end
endmodule