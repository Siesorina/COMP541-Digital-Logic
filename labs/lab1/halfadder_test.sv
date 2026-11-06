`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Montek Singh
// 1/9/2026
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder_test();        // Tester for halfadder

    logic A;
    logic B;
    logic Cin;
    wire Sum;
    
    halfadder myhalfadder(A, B, Cin, Sum);
    
    initial begin
    // 触发波形导出的指令
    $dumpfile("half_waveform.vcd");
    $dumpvars(0, halfadder_test);

    // Initialize Inputs
        A = 0;
        B = 0;
        Cin = 0;
    // Wait, say, 10 ns before inputs start changing
        #10;
    
    // Add stimulus here
    // Inputs change every 1 ns, going from 000 to 111
        #1 {A, B, Cin} = 3'b001;
        #1 {A, B, Cin} = 3'b010;
        #1 {A, B, Cin} = 3'b011;
        #1 {A, B, Cin} = 3'b100;
        #1 {A, B, Cin} = 3'b101;
        #1 {A, B, Cin} = 3'b110;
        #1 {A, B, Cin} = 3'b111;
    // Wait another 5 ns, and then finish simulation
        #5 $finish;
    end
    
endmodule