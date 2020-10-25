module ALU(input wire [3:0] A, input wire [3:0] B, input wire [2:0] R, output reg [3:0] Y);
  always @ ( * ) begin
  case(R)
      3'b000: Y = A & B;
      3'b001: Y = A | B;
      3'b010: Y = A + B;
      default: Y = A & B;
      3'b100: Y = A & ~B;
      3'b101: Y = A | ~B;
      3'b110: Y = A - B;
      3'b111: Y = (A > B)?3'b001 :3'b000;
  endcase
  end
endmodule
