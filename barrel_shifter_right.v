module barrel_shifter_right(input [3:0] in, input [1:0] shamt, output [3:0] out);
assign out = in >> shamt;
endmodule