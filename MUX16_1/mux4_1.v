module mux4_1(
    input i0, i1, i2, i3,
    input [1:0] sel,
    output y
);

wire w1, w2;

mux2_1 m1(.i0(i0), .i1(i1), .sel(sel[0]), .y(w1));
mux2_1 m2(.i0(i2), .i1(i3), .sel(sel[0]), .y(w2));
mux2_1 m3(.i0(w1), .i1(w2), .sel(sel[1]), .y(y));

endmodule