module fa(
        input a, b, cin,
        output sum, cout);
        
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
        
    endmodule 

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
  fa a1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));  //instantiation method
  fa a2 (.a(a[1]), .b(b[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
  fa a3(.a(a[2]), .b(b[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2])); 
    
  wire [3:0] carry; //using genvar
    assign carry[0] = cin;
    genvar i;  
      generate 
          for (i = 0; i < 3; i =  i + 1)
                begin:fa
                    fa a1(.a(a[i]), .b(b[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]));
                    
                 end
                          
       endgenerate
                          
    assign cout = carry[3:1];
                     
endmodule
