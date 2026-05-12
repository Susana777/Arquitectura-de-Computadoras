module mux2a1_5b(
    input  [4:0] entrada1, entrada2,
    input  selector,
    output reg [4:0] Resultado
);

always @(*) begin
    case (selector)
        1'b0: Resultado = entrada1;
        1'b1: Resultado = entrada2;
        default: Resultado = 5'b0;
    endcase
end

endmodule
