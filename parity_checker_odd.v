module parity_checker_odd(input [3:0] data, output parity);
assign parity = ^data;
endmodule