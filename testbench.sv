// Code your testbench here
// or browse Examples
module tb_binary_to_gray;
    reg  [3:0] binary;
    wire [3:0] gray;

    // Instantiate DUT
    binary_to_gray dut (.binary(binary), .gray(gray));

    integer i;

    initial begin
        $dumpfile("wave.vcd");   // for GTKWave / EP waves
        $dumpvars(0, tb_binary_to_gray);

        $display("Binary  ->  Gray");
        $display("----------------");

        // Test all 4-bit combinations
        for (i = 0; i < 16; i = i + 1) begin
            binary = i;
            #5;   // wait for outputs
            $display("%b  ->  %b", binary, gray);
        end

        $finish;
    end
endmodule