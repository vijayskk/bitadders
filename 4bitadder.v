`include "1bitadder.v"

module fourbitadder (
    output wire y1,y2,y3,y4,c,input wire a1,a2,a3,a4,b1,b2,b3,b4,cin
);
    wire c1,c2,c3;
    onebitadder add1(y4,c1,a4,b4,cin);
    onebitadder add2(y3,c2,a3,b3,c1);
    onebitadder add3(y2,c3,a2,b2,c2);
    onebitadder add4(y1,c,a1,b1,c3);
endmodule