module mod_10_counter(input clk, input rst, output reg [3:0] out);
always @(posedge clk or posedge rst) begin
  if (rst)
    out <= 0;
  else if (out == 9)
    out <= 0;
  else
    out <= out + 1;
end
endmodule