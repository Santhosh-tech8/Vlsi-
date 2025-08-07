module mod_6_counter(input clk, input rst, output reg [2:0] out);
always @(posedge clk or posedge rst) begin
  if (rst)
    out <= 0;
  else if (out == 5)
    out <= 0;
  else
    out <= out + 1;
end
endmodule