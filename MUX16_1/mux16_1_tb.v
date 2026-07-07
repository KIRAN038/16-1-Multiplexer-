`timescale 1ns/1ps

module mux16_1_tb;

reg i0,i1,i2,i3,i4,i5,i6,i7;
reg i8,i9,i10,i11,i12,i13,i14,i15;

reg [3:0] sel;

wire y;

mux16_1 uut(
.i0(i0), .i1(i1), .i2(i2), .i3(i3),
.i4(i4), .i5(i5), .i6(i6), .i7(i7),
.i8(i8), .i9(i9), .i10(i10), .i11(i11),
.i12(i12), .i13(i13), .i14(i14), .i15(i15),
.sel(sel),
.y(y)
);

initial begin

$dumpfile("mux16_1.vcd");
$dumpvars(0,mux16_1_tb);

$monitor("Time=%0t sel=%b y=%b",
          $time,sel,y);

i0=0; i1=1; i2=0; i3=1;
i4=0; i5=1; i6=0; i7=1;
i8=1; i9=0; i10=1; i11=0;
i12=1; i13=0; i14=1; i15=0;

sel=4'b0000; #10;
sel=4'b0001; #10;
sel=4'b0010; #10;
sel=4'b0011; #10;
sel=4'b0100; #10;
sel=4'b0101; #10;
sel=4'b0110; #10;
sel=4'b0111; #10;
sel=4'b1000; #10;
sel=4'b1001; #10;
sel=4'b1010; #10;
sel=4'b1011; #10;
sel=4'b1100; #10;
sel=4'b1101; #10;
sel=4'b1110; #10;
sel=4'b1111; #10;

$finish;

end

endmodule