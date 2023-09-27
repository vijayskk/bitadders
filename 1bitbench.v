`include "1bitadder.v"

module testbench;
    reg a;
    reg b;
    reg cin;
    wire s,c;
    onebitadder x1(s,c,a,b,cin);
    initial begin
        $monitor($time,"a=%b,b=%b,s=%b,c=%b\n",a,b,s,c);
    end

    initial begin
        $dumpfile("1bitadder.vcd");
        $dumpvars(0);
        cin=0;
        a=1'b0;b=1'b0;     #5
        a=1'b0;b=1'b1;     #5
        a=1'b1;b=1'b0;     #5
        a=1'b1;b=1'b1;     #5

        $finish;
    end
endmodule


