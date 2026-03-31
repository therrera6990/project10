module top(
    input wire [3:0] sw,
    input wire btnC,
    output wire [5:0] led
);
    DFF dff_inst(
        .d(sw[0]),
        .clk(btnC),
        .q(led[0]),
        .qn(led[1])
);
    jkff jkff_inst(
        .j(sw[1]),
        .k(sw[2]),
        .clk(btnC),
        .q(led[2]),
        .qn(led[3])
);
    tff tff_inst(
    .t(sw[3]),
    .clk(btnC),
    .q(led[4]),
    .qn(led[5])
);
endmodule