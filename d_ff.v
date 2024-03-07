module d_ff(
input wire clk,D,rst,
output reg Q
);

always @ (posedge clk,negedge rst) begin
if (~rst) begin
end
Q <= D;

end

endmodule
