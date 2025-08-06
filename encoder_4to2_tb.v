module encoder_4to2_tb;
reg [3:0] d;
wire [1:0] y;
encoder_4to2 uut (.d(d), .y(y));
initial begin
  $dumpfile("encoder_4to2.vcd");
  $dumpvars(0, encoder_4to2_tb);
  d = 4'b0001;
  #10 d = 4'b0010;
  #10 d = 4'b0100;
  #10 d = 4'b1000;
  #10 $finish;
end
endmodule