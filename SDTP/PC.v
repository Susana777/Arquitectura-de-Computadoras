module pc(input clk, input [31:0]entrada, output reg [31:0]dir);

always @(posedge clk)begin
	dir = entrada;
end

endmodule
