module barrel_shifter(input [3:0] data, input [1:0] shift, output [3:0] out);
assign out = data << shift;
endmodule