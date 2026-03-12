`timescale 1ns/1ps

module slave(
	output MISO,
	input MOSI,
	input SCLK,
	input SS
);

reg [7:0] almacen; // Para almacenar el dato de 8 bits que vas a enviar por MOSI y donde vas a guardar lo que recibas por MISO
reg [2:0] contador; //Contador de pulso del relog para saber cuando se recibieron los 8 bits
reg [7:0] salida; // Para guardar el dato cuando se recibieron los 8 bits completos

endmodule

module master(
	input MISO,
	output MOSI,
	input SCLK,
	output SS
);

reg [7:0] almacen; //Para almacenar el dato de 8 bits que vas a enviar por MOSI y donde vas a guardar lo que recibas por MISO
reg [2:0] contador; //Contador de pulso del relog para saber cuando se recibieron los 8 bits
reg estados; //maquina de estados

endmodule

module SPI (
	input CLK
);

wire c1;
wire c2;
wire c3;

master Master(
	.MISO(c1),
	.MOSI(c2),
	.SCLK(CLK),
	.SS(c3)
	);
	
slave Slave(
	.MISO(c1),
	.MOSI(c2),
	.SCLK(CLK),
	.SS(c3)
	);
	
endmodule
	

