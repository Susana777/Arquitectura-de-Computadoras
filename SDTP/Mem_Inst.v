module mem_inst(
    input [31:0]RA,
    output reg [31:0] rd
);

    reg [31:0] memoria_inst [0:31];
    wire [3:0]lineas;    

    initial begin
    	$readmemb("TestF1_MemInst.mem", memoria_inst);
    end

    always @(*) begin
	rd = {memoria_inst[RA][7:0],
              memoria_inst[RA+1][7:0],
              memoria_inst[RA+2][7:0],
              memoria_inst[RA+3][7:0]};
    end

endmodule
