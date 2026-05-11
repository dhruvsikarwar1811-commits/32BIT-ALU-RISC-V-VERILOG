module alu_32bit(
    input  [31:0] a, b,
    input  [3:0]  alu_op,
    output reg [31:0] result,
    output reg zero
);
    always @(*) begin
        case(alu_op)
            4'b0000: result = a + b;
            4'b0001: result = a - b;
            4'b0010: result = a & b;
            4'b0011: result = a | b;
            4'b0100: result = a ^ b;
            4'b0101: result = a << b[4:0];
            4'b0110: result = a >> b[4:0];
            4'b0111: result = ($signed(a) < $signed(b)) ? 1 : 0;
            default: result = 32'b0;
        endcase
        zero = (result == 0) ? 1 : 0;
    end
endmodule
