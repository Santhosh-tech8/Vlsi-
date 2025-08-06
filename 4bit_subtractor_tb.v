module 4bit_subtractor_tb;
reg [3:0] a, b;
wire [4:0] diff;
4bit_subtractor uut (.a(a), .b(b), .diff(diff));
initial begin
  $dumpfile("4bit_subtractor.vcd");
  $dumpvars(0);
  a = 4'b1000; b = 4'b0011;
  #10 a = 4'b0100; b = 4'b0100;
  #10 $finish;
end
endmodule