module parity_checker_tb;
reg [3:0] data;
wire parity;
parity_checker uut (.data(data), .parity(parity));
initial begin
  $dumpfile("parity_checker.vcd");
  $dumpvars(0, parity_checker_tb);
  data = 4'b0000;
  #10 data = 4'b1010;
  #10 data = 4'b1111;
  #10 $finish;
end
endmodule