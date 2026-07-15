module fa(
    
    input a, b, cin,
    output sum, cout
);
     assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
        
    endmodule 

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum);
    
    wire[100:0] carry;
    assign carry [0] = cin;
    
    genvar i;
    generate
        for(i = 0; i < 100; i = i + 1)
            begin: FA
                fa a1(.a(a[i]), .b(b[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]));
                    
                 end
    endgenerate
               
        assign cout = carry [100];

endmodule
