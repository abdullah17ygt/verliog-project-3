module shift_reg( 

input wire  clk,
input wire load ,
input wire enable,
input wire  [7:0] in,
output wire LSB


);

reg [7:0] shift;

assign LSB = shift[0];

always @ (posedge clk) begin
      
         if(load) begin 
            shift <= in;
    
        
         end
         
         else   if(enable) begin
                shift <= {1'b0,shift[7:1]};
                
            end   
     end  
   
endmodule