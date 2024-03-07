module serial_adder(
input wire clk,rstn,start,initial_cin,
input [7:0]a,[7:0]b,
output [8:0]sum_out_main

    );
   reg cin;    
wire LSB_A,LSB_B,enable,load,rst,sout,cout;

always @ (posedge clk) begin
    if (load)
    cin <= initial_cin ;
    
    else
        cin<=cout;
end

fsm            s1        (.clk(clk),.start(start), .rstn(rstn), .enable(enable), .load(load),.rst(rst));

shift_reg      s2        (.clk(clk),.load(load) ,.enable(enable) ,.in(a), .LSB(LSB_A));  

shift_reg      s3        (.clk(clk),.load(load) ,.enable(enable),.in(b),.LSB(LSB_B));  

full_adder     s4        (.ain(LSB_A), .bin(LSB_B), .cin(cin),.cout(cout), .sumout(sout));


shift_reg_sum  s6        (.clk(clk),.enable(enable),.rst(rst),.sum(sum_out_main),.sout(sout));

endmodule
