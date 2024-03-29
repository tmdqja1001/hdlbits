module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
); 
    //sequential logic
    always @(posedge clk) begin
        if (reset) begin
            q <= 5'b1;
        end
        else begin
            q[4] <= q[0] ^ 1'b0;
            q[3] <= q[4];
            q[2] <= q[3] ^ q[0];
            q[1] <= q[2];
            q[0] <= q[1];
        end
    end
endmodule
