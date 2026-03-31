module DFF(
    input wire d, clk,
    output reg q,
    output wire qn
);

initial begin
    q = 0;
end

always @(posedge clk) begin
    q <= d;
end

assign qn = ~q;

endmodule