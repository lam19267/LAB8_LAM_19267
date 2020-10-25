module ROM(input wire[11:0] A, output  wire[7:0] Y);
  assign Y = Memoria[A];
  reg[7:0] Memoria[0:4095];
  initial begin
    $readmemb("Memoria.list", Memoria);
  end
endmodule
