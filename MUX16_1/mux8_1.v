module mux8_1(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] sel,
    output y
);

wire w1,w2;

mux4_1 m1(
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .sel(sel[1:0]),
    .y(w1)
);

mux4_1 m2(
    .i0(i4), .i1(i5), .i2(i6), .i3(i7),
    .sel(sel[1:0]),
    .y(w2)
);

mux2_1 m3(
    .i0(w1),
    .i1(w2),
    .sel(sel[2]),
    .y(y)
);

endmodule