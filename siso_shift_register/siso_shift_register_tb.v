module siso_shift_register_tb;
reg clk, rst, data_in;
wire data_out;
siso_shift_register uut(.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out));
initial begin
  $dumpfile("siso_shift_register.vcd");
  $dumpvars(0, siso_shift_register_tb);
  clk = 0; forever #5 clk = ~clk;
end
initial begin
  rst = 1; data_in = 0; #10;
  rst = 0;
  data_in = 1; #10;
  data_in = 0; #10;
  data_in = 1; #10;
  $finish;
end
endmodule