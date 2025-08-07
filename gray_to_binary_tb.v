module gray_to_binary_tb;
reg [3:0] gray;
wire [3:0] bin;
gray_to_binary uut(.gray(gray), .bin(bin));
initial begin
  $dumpfile("gray_to_binary.vcd");
  $dumpvars(0, gray_to_binary_tb);
  gray = 4'b0000; #10;
  gray = 4'b0001; #10;
  gray = 4'b0011; #10;
  gray = 4'b0110; #10;
  gray = 4'b1111; #10;
  $finish;
end
endmodule