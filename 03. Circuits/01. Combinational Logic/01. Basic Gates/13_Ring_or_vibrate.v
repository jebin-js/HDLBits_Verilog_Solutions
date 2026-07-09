module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
   
);

    /*assign ringer = (ring == 1) ? 1 : 0;
    assign motor = (vibrate_mode == 1) ? 1 : 0;*/
    
    assign ringer= ring & ~(vibrate_mode);
    assign motor = ring & vibrate_mode;
    
endmodule
