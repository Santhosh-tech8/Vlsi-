module decrementer_tb;
reg [3:0] in;
wire [3:0] out;
decrementer uut(.in(in), .out(out));
initial begin
  $dumpfile("decrementer.vcd");
  $dumpvars(0, decrementer_tb);
  in = 4'b0100;
  #10 in = 4'b0000;
  #10 in = 4'b1111;
  #10 $finish;
end
endmodule