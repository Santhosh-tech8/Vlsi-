module bitwise_and_4bit_tb;
reg [3:0] a, b;
wire [3:0] out;
bitwise_and_4bit uut(.a(a), .b(b), .out(out));
initial begin
  $dumpfile("bitwise_and_4bit.vcd");
  $dumpvars(0);
  a = 4'b1100; b = 4'b1010; #10;
  a = 4'b1111; b = 4'b0000; #10;
  $finish;
end
endmodule