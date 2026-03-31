module jkff(
    input wire j,k,clk,
    output wire q, qn
);

    wire d_internal;
    wire q_internal;
    wire qn_internal;
    
    assign d_internal=(j& ~q_internal) | (~k&q_internal);
    
DFF jk_dff(
    .d(d_internal),
    .clk(clk),
    .q(q_internal),
    .qn(qn_internal)
);

    assign q=q_internal;
    assign qn=qn_internal;
    
endmodule