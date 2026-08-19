// Testbench for 4-bit Ripple Carry Adder
`timescale 1ns/1ps

module ripple_carry_adder_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;

    wire [3:0] Sum;
    wire       Cout;

    // Instantiate DUT
    ripple_carry_adder DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("Time\tA\tB\tCin\tSum\tCout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, Cin, Sum, Cout);

        // Test 1
        A = 4'b0000; B = 4'b0000; Cin = 1'b0;
        #10;

        // Test 2
        A = 4'b0011; B = 4'b0101; Cin = 1'b0;
        #10;

        // Test 3
        A = 4'b0111; B = 4'b0001; Cin = 1'b0;
        #10;

        // Test 4
        A = 4'b1010; B = 4'b0101; Cin = 1'b0;
        #10;

        // Test 5
        A = 4'b1111; B = 4'b0001; Cin = 1'b0;
        #10;

        // Test 6
        A = 4'b1111; B = 4'b1111; Cin = 1'b0;
        #10;

        // Test 7
        A = 4'b1010; B = 4'b0101; Cin = 1'b1;
        #10;

        $finish;
    end

endmodule