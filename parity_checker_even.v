module parity_checker_even(input [3:0] data, output parity);
assign parity = ~^data;
endmodule