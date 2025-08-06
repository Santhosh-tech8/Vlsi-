module comparator_2bit(input [1:0] a, input [1:0] b, output gt, output lt, output eq);
assign gt = (a > b);
assign lt = (a < b);
assign eq = (a == b);
endmodule