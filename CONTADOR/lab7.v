

module contador(input wire clk, reset, enable, loadbit, input wire[11:0] load ,output reg [11:0]cont);
  always @ (posedge clk or posedge reset or posedge loadbit) begin
  if (reset)
    cont <= 12'b000000000000;
  else if (loadbit)
      cont <= load;
  else if (enable)
      cont <= cont + 12'b1;
  end
endmodule
