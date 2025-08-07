module even_parity_generator_tb;
reg [3:0] data;
wire parity;
even_parity_generator uut(.data(data), .parity(parity));
initial begin
  $dumpfile("even_parity_generator.vcd");
  $dumpvars(0, even_parity_generator_tb);
  data = 4'b0000; #10;
  data = 4'b1010; #10;
  data = 4'b1111; #10;
  $finish;
end
endmodule