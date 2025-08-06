module mux_2to1_tb;
reg a, b, sel;
wire y;
mux_2to1 uut (.a(a), .b(b), .sel(sel), .y(y));
initial begin
  $dumpfile("mux_2to1.vcd");
  $dumpvars(0);
  a = 0; b = 1; sel = 0;
  #10 sel = 1;
  #10 $finish;
end
endmodule