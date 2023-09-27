`include "exorgate.v"

module onebitadder (
    output wire s,c,input wire A,B,cin
);
    wire x1,y1,z1;
    exorgate ex1(x1,A,B);
    exorgate ex2(s,x1,cin);
    and and1(y1,x1,cin);
    and and2(z1,A,B);
    or or1(c,y1,z1);

endmodule