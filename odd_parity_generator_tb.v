module odd_parity_generator_tb;
reg [3:0] data;
wire parity;
odd_parity_generator uut(.data(data), .parity(parity));
initial begin
  $dumpfile("odd_parity_generator.vcd");
  $dumpvars(0, odd_parity_generator_tb);
  data = 4'b0101; #10;
  data = 4'b1110; #10;
  data = 4'b1001; #10;
  $finish;
end
endmodule