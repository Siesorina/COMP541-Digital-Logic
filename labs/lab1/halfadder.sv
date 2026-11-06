module halfadder(
    input wire A, B, Cin,
    output wire Sum
);

    assign Sum=(Cin^A)^B;

endmodule
