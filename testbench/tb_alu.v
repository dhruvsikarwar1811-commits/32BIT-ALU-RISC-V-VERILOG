module tb_alu;
    reg  [31:0] a, b;
    reg  [3:0]  alu_op;
    wire [31:0] result;
    wire zero;

    alu_32bit uut(.a(a),.b(b),.alu_op(alu_op),.result(result),.zero(zero));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_alu);
        a=32'd15; b=32'd10; alu_op=4'b0000; #10;
        a=32'd15; b=32'd10; alu_op=4'b0001; #10;
        a=32'd12; b=32'd10; alu_op=4'b0010; #10;
        a=32'd12; b=32'd10; alu_op=4'b0011; #10;
        a=32'd15; b=32'd15; alu_op=4'b0001; #10;
        $finish;
    end
endmodule
