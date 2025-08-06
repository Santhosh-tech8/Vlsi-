module t_latch(input t, input en, output reg q);
always @(*) begin
  if (en)
    if (t) q = ~q;
end
endmodule