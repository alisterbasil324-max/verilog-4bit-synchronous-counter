module testbench;

    logic clk;
    logic rst;
    logic en;
    logic up_down;
    logic [3:0] count;

    // Instantiate the counter
    counter dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        en = 0;
        up_down = 1;

        // Reset
        #10;
        rst = 0;

        // Count up
        en = 1;
        up_down = 1;
        #50;

        // Count down
        up_down = 0;
        #50;

        // Disable counter
        en = 0;
        #20;

        $finish;
    end

    // Monitor output
    initial begin
        $monitor(
            "Time=%0t | Reset=%b | Enable=%b | UpDown=%b | Count=%d",
            $time, rst, en, up_down, count
        );
    end

endmodule
