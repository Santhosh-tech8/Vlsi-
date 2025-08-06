module barrel_shifter_tb;
reg [3:0] data;
reg [1:0] shift;
wire [3:0] out;
barrel_shifter uut (.data(data), .shift(shift), .out(out));
initial begin
  $dumpfile("barrel_shifter.vcd");
  $dumpvars(0, barrel_shifter_tb);
  data = 4'b1010; shift = 2'b00;
  #10 shift = 2'b01;
  #10 shift = 2'b10;
  #10 shift = 2'b11;
  #10 $finish;
end
endmodule