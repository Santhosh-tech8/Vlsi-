module binary_multiplier_2bit_tb;
reg [1:0] a, b;
wire [3:0] product;
binary_multiplier_2bit uut(.a(a), .b(b), .product(product));
initial begin
  $dumpfile("binary_multiplier_2bit.vcd");
  $dumpvars(0, binary_multiplier_2bit_tb);
  a = 2'b00; b = 2'b01; #10;
  a = 2'b01; b = 2'b11; #10;
  a = 2'b10; b = 2'b10; #10;
  a = 2'b11; b = 2'b11; #10;
  $finish;
end
endmodule