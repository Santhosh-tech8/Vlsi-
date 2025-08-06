module demux_1to2_tb;
reg din, sel;
wire [1:0] dout;
demux_1to2 uut (.din(din), .sel(sel), .dout(dout));
initial begin
  $dumpfile("demux_1to2.vcd");
  $dumpvars(0);
  din = 1; sel = 0;
  #10 sel = 1;
  #10 $finish;
end
endmodule