module 4bit_subtractor(input [3:0] a, input [3:0] b, output [4:0] diff);
assign diff = a - b;
endmodule