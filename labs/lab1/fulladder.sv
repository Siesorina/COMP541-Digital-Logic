module fulladder(
    input wire A, B, Cin,
    output wire Sum, Cout
);

    assign Sum=(Cin^A)^B;
    assign Cout=(Cin&(A^B))|(A&B);

endmodule
