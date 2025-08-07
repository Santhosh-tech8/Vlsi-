module parity_checker_odd_tb;
reg [3:0] data;
wire parity;
parity_checker_odd uut(.data(data), .parity(parity));
initial begin
  $dumpfile("parity_checker_odd.vcd");
  $dumpvars(0, parity_checker_odd_tb);
  data = 4'b0000; #10;
  data = 4'b1111; #10;
  data = 4'b1001; #10;
  data = 4'b1100; #10;
  $finish;
end
endmodule