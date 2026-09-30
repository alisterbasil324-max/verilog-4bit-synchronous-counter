module counter (
    input  logic       clk,
    input  logic       rst,
    input  logic       en,
    input  logic       up_down,
    output logic [3:0] count
);

    always_ff @(posedge clk) begin
        if (rst)
            count <= 4'b0000;
        else if (en) begin
            if (up_down)
                count <= count + 4'b0001;
            else
                count <= count - 4'b0001;
        end
    end

endmodule
