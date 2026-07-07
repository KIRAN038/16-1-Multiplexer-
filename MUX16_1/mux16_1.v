module mux16_1(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input i8,i9,i10,i11,i12,i13,i14,i15,
    input [3:0] sel,
    output y
);

wire w1,w2;

mux8_1 m1(
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .i4(i4), .i5(i5), .i6(i6), .i7(i7),
    .sel(sel[2:0]),
    .y(w1)
);

mux8_1 m2(
    .i0(i8), .i1(i9), .i2(i10), .i3(i11),
    .i4(i12), .i5(i13), .i6(i14), .i7(i15),
    .sel(sel[2:0]),
    .y(w2)
);

mux2_1 m3(
    .i0(w1),
    .i1(w2),
    .sel(sel[3]),
    .y(y)
);

endmodule