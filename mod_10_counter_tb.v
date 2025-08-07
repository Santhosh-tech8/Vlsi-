module mod_10_counter_tb;
reg clk, rst;
wire [3:0] out;
mod_10_counter uut (.clk(clk), .rst(rst), .out(out));
initial begin
  $dumpfile("mod_10_counter.vcd");
  $dumpvars(0, mod_10_counter_tb);
  clk = 0; rst = 1;
  #5 rst = 0;
  repeat(20) begin
    #5 clk = ~clk;
  end
  #10 $finish;
end
endmodule