module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q ); 

    always @(posedge clk) begin
        if (load) begin
            q <= data;
        end else begin
        	integer i;
        	for (i=1; i<511; i=i+1) begin
                q[i] <= q[i-1] ^ q[i+1];
        	end
        	q[0] <= q[1] ^ 1'b0;
        	q[511] <= q[510] ^ 1'b0;
        end
    end
            
endmodule
