module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*)begin
        casez (in[7:0])
            8'bzzzzzzz1: pos = 3'b000;
            8'bzzzzzz10: pos = 3'b001;
            8'bzzzzz100: pos = 3'b010;
            8'bzzzz1000: pos = 3'b011;
            8'bzzz10000: pos = 3'b100;
            8'bzz100000: pos = 3'b101;
            8'bz1000000: pos = 3'b110;
            8'b10000000: pos = 3'b111;
            default: pos = 3'b0;
        endcase
    end

endmodule

// using casex and octal as output

module top_module (
    input [7:0] in,
    output reg [2:0] pos );
        always @(*)begin
        casex (in[7:0])
            8'bxxxxxxx1: pos = 3'o0;
            8'bxxxxxx10: pos = 3'o1;
            8'bxxxxx100: pos = 3'o2;
            8'bxxxx1000: pos = 3'o3;
            8'bxxx10000: pos = 3'o4;
            8'bxx100000: pos = 3'o5;
            8'bx1000000: pos = 3'o6;
            8'b10000000: pos = 3'o7;
            default: pos = 3'b0;
        endcase
    end

endmodule
