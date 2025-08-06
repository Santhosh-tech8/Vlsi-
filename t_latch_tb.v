module t_latch_tb;
reg t, en;
wire q;
t_latch uut (.t(t), .en(en), .q(q));
initial begin
  $dumpfile("t_latch.vcd");
  $dumpvars(0, t_latch_tb);
  t = 1; en = 0;
  #10 en = 1;
  #10 t = 0;
  #10 $finish;
end
endmodule