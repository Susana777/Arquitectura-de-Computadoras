module Nor_comportamental (
	input [31:0]A_NOR,
	input [31:0]B_NOR,
	output [31:0]R_NOR
	);
	
assign R_NOR = ~(A_NOR | B_NOR);

endmodule