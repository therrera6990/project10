module tff(
    input wire t, clk,
    output wire q, qn
);

wire d_internal;
wire q_internal;
wire qn_internal;


assign d_internal = t ^ q_internal;


DFF t_diff(
    .d(d_internal),
    .clk(clk),
    .q(q_internal),
    .qn(qn_internal)
);
assign q = q_internal;
assign qn = qn_internal;

endmodule