`timescale 1ns / 1ps

module mux2to1_tb;
    // Inputs (declared as reg so we can drive them)
    reg a;
    reg b;
    reg sel;

    // Output (declared as wire)
    wire out;

    // Instantiate the Unit Under Test (UUT)
    mux2to1 uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .out(out)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 0; sel = 0;
        #10;
        
        // Test cases
        a = 1; b = 0; sel = 0; #10; // Expected out = 1
        a = 1; b = 0; sel = 1; #10; // Expected out = 0
        a = 0; b = 1; sel = 1; #10; // Expected out = 1
        a = 1; b = 1; sel = 0; #10; // Expected out = 1
        
        $finish;
    end
endmodule