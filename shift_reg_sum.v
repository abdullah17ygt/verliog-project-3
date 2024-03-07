module shift_reg_sum( 

input wire  clk ,
input wire enable,
input wire rst,
input wire  sout,
output [8:0]sum


);


reg [8:0] shift;
assign sum = shift;

always @ (posedge clk or posedge rst) begin

 if (rst)begin
        shift <= 9'b0;
    end
    else begin
    
         if(enable) begin
            shift <= {sout,shift[8:1]};
         end   
     end    
end

endmodule