module binary_to_gray_tb;
reg [3:0] bin;
wire [3:0] gray;
binary_to_gray uut(.bin(bin), .gray(gray));
initial begin
  $dumpfile("binary_to_gray.vcd");
  $dumpvars(0, binary_to_gray_tb);
  bin = 4'b0000; #10;
  bin = 4'b0001; #10;
  bin = 4'b0011; #10;
  bin = 4'b0101; #10;
  bin = 4'b1111; #10;
  $finish;
end
endmodule