CREATE DATABASE IF NOT EXISTS SUBASTA;

USE SUBASTA;

CREATE TABLE LOTE (
	catnum int(4)  AUTO_INCREMENT,
	precioSalida DECIMAL (10,2) NOT NULL,
	pujaMaxima DECIMAL (10,2) NOT NULL,
	tiempoSubasta TIME,
	PRIMARY KEY (catnum)
	);
	
CREATE TABLE CLIENTE (
    usuario CHAR (12) PRIMARY KEY,
    nombre VARCHAR (15),
    clave VARCHAR (15) NOT NULL,
    email VARCHAR (30)
);

CREATE TABLE PRODUCTO (
    codigo CHAR (20) PRIMARY KEY,
    nombre VARCHAR (20) NOT NULL,
    descuento VARCHAR (10),
    foto CHAR (50)
);
		
CREATE TABLE PUJA ( 
	catnum int(4),
	usuario CHAR(10),
    dia DATE not NULL,
    hora TIME not NULL,
    cantidad INTEGER (7),
	PRIMARY KEY (catnum,usuario),
	FOREIGN KEY (catnum) REFERENCES LOTE (catnum),
	FOREIGN KEY (usuario) REFERENCES CLIENTE (usuario)
	);