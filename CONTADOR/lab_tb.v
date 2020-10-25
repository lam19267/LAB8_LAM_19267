module testbench();

reg clk, reset, enable, loadbit;
reg[11:0] load;
wire[11:0] cont;
contador U1(clk, reset, enable, loadbit, load, cont);

always
  #1 clk <= ~clk;

initial begin
#1
$display("Contador");
$display("clk reset enable loadbit load| cont");
$display("-----------|---------");
$monitor("%b %b %b %b %b |  %b", clk, reset, enable, loadbit, load, cont);
end
  initial begin
    clk = 0; reset = 0; enable = 0; loadbit = 0; load = 12'b000000000000;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 1;
  #1 reset = 0;
  #1 loadbit = 1; load = 12'b000100000000;
  #1 loadbit = 1;
  #1 loadbit = 1;
  #1 loadbit = 1; enable = 1;
  #1 loadbit = 0;



  end

 initial
   #500 $finish;
 initial begin
     $dumpfile("lab_tb.vcd");
     $dumpvars(0, testbench);
   end
 endmodule
