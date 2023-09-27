module exorgate (
    output wire Y ,input wire A,B
);
    wire b1,c,a1,d;

    and and1(c,A,b1);
    not n1(b1,B);
    not n2(a1,A);
    and and2(d,a1,B);
    or or1(Y,c,d);
endmodule