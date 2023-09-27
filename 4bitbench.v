`include "4bitadder.v"

module testbench;
    reg a1,a2,a3,a4,b1,b2,b3,b4,cin;
    wire s1,s2,s3,s4,c;
    fourbitadder x1(s1,s2,s3,s4,c,a1,a2,a3,a4,b1,b2,b3,b4,cin);
    initial begin
        $monitor($time,"A=%b%b%b%b,B=%b%b%b%b,Y=%b%b%b%b,c=%b\n",a1,a2,a3,a4,b1,b2,b3,b4,s1,s2,s3,s4,c);
    end

    initial begin
        $dumpfile("4bitadder.vcd");
        $dumpvars(0);
        cin=0;
        a1=1'b0;a2=1'b0;a3=1'b1;a4=1'b0;
        b1=1'b0;b2=1'b0;b3=1'b0;b4=1'b1;
        $finish;
    end
endmodule


