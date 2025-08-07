module parity_checker_even_tb;
reg [3:0] data;
wire parity;
parity_checker_even uut(.data(data), .parity(parity));
initial begin
  $dumpfile("parity_checker_even.vcd");
  $dumpvars(0, parity_checker_even_tb);
  data = 4'b0000; #10;
  data = 4'b1001; #10;
  data = 4'b1111; #10;
  data = 4'b0101; #10;
  $finish;
end
endmodule