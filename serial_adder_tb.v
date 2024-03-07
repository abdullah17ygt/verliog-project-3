module serial_adder_tb();
reg clk=0,rstn,start=0,initial_cin=0;
reg[7:0]a;
reg[7:0]b;
wire [8:0] sum_out_main;
serial_adder dut (.clk(clk), .rstn(rstn) , .start(start), .a(a), .b(b), .sum_out_main(sum_out_main),.initial_cin(initial_cin));

always begin
    clk= ~clk;
    #5;
end

initial begin 
a=8'd14;
b=8'd117;
    rstn = 1;
    #20;
    rstn = 0;
    start=1;
    #10
    start=0;
    
end


endmodule
