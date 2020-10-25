module testbenchALU();
reg[3:0] A;
reg[3:0] B;
reg[2:0] R;
wire[3:0] Y;

ALU AA(A, B, R, Y);

initial begin
#1
$display(" ALU");
$display("A B R | Y");
$display("-----------|---------");
$monitor("%b %b %b |  %b", A, B, R, Y);
end
  initial begin
    A = 4'b0000; B = 4'b0000; R = 4'b000;
  #1 A = 4'b0100; B = 4'b1000; R = 4'b000;
  #1 A = 4'b0100; B = 4'b1000; R = 4'b001;
  #1 A = 4'b0010; B = 4'b0001; R = 4'b010;
  #1 A = 4'b0010; B = 4'b0001; R = 4'b100;
  #1 A = 4'b0011; B = 4'b0110; R = 4'b101;
  #1 A = 4'b0011; B = 4'b0110; R = 4'b110;
  #1 A = 4'b0011; B = 4'b0110; R = 4'b111;




  end

 initial
   #500 $finish;
 initial begin
     $dumpfile("ALU_tb.vcd");
     $dumpvars(0, testbenchALU);
   end
 endmodule
