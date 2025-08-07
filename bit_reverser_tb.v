module bit_reverser_tb;
reg [3:0] in;
wire [3:0] out;
bit_reverser uut(.in(in), .out(out));
initial begin
  $dumpfile("bit_reverser.vcd");
  $dumpvars(0);
  in = 4'b0001; #10;
  in = 4'b1010; #10;
  in = 4'b1111; #10;
  in = 4'b0011; #10;
  $finish;
end
endmodule