module demux_1to2(input din, input sel, output reg [1:0] dout);
always @(*) begin
  dout = 2'b00;
  case (sel)
    1'b0: dout[0] = din;
    1'b1: dout[1] = din;
  endcase
end
endmodule