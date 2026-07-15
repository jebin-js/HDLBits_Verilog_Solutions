module fa (
    input a, b, cin,
    output sum, cout);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
    
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum);
    
    wire [4:0] carry;
    assign carry[0] = 1'b0;
    
    genvar i;
    generate
        for(i = 0; i < 4; i = i + 1)
        begin: FA
            
            fa a1(.a(x[i]), .b(y[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]));
            
        end
        
        assign sum[4] = carry[4];
        
    endgenerate
            
                

endmodule
