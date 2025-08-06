module demux_1to4(input din, input [1:0] sel, output reg [3:0] dout);
always @(*) begin
  dout = 4'b0000;
  dout[sel] = din;
end
endmodule