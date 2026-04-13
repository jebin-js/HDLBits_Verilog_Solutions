module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = (~a & ~b) | (a & b); // This method is using Boolean Expression (𝐴⊙𝐵 = (~𝐴𝐵) + 𝐴𝐵)
    
    // We can also do use using bitwise operator ie assign out = ~(a^b)

endmodule
