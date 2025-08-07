module mod_6_counter_tb;
reg clk, rst;
wire [2:0] out;
mod_6_counter uut (.clk(clk), .rst(rst), .out(out));
initial begin
  $dumpfile("mod_6_counter.vcd");
  $dumpvars(0, mod_6_counter_tb);
  clk = 0; rst = 1;
  #5 rst = 0;
  repeat(12) begin
    #5 clk = ~clk;
  end
  #10 $finish;
end
endmodule