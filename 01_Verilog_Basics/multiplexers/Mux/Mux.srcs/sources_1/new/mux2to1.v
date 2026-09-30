module mux2to1 (
    input wire a,
    input wire b,
    input wire sel,
    output wire out
);
    // Continuous assignment representing a 2-to-1 MUX
    assign out = (sel) ? b : a;
endmodule