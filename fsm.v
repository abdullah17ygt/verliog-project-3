module fsm(
input start,
input clk ,
input rstn,
output reg rst, 
output reg enable,
output reg load
);
 reg [3:0] counter;
always@(posedge clk or posedge rstn) begin
    if (rstn) begin
        load <=0;
        counter <=0;
        enable <= 0;
        rst<=1;
    end
    else begin
        if (start) begin
        load <= 1;
        enable <= 1;
        rst <= 0;
     end
     else if (load) begin
        load<=0;
     end
     if (counter > 4'b1000) begin
        enable <= 0;
     end
     else if(enable)begin
     counter <= counter+1;
   end
   end
   end  
    
endmodule
