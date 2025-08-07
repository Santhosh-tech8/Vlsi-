module incrementer_tb;
reg [3:0] in;
wire [3:0] out;
incrementer uut(.in(in), .out(out));
initial begin
  $dumpfile("incrementer.vcd");
  $dumpvars(0, incrementer_tb);
  in = 4'b0000;
  #10 in = 4'b1000;
  #10 in = 4'b1111;
  #10 $finish;
end
endmodule