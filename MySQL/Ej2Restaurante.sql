CREATE DATABASE IF NOT EXISTS RESTAURANTE;

USE RESTAURANTE;

CREATE TABLE CATEGORIA (
	nombrec VARCHAR (15) PRIMARY KEY,
	descrip VARCHAR (150),
	encarg VARCHAR (25)
);

CREATE TABLE PLATO (
	nombrep VARCHAR (15) PRIMARY KEY,
	descrip VARCHAR (150) NOT NULL,
	nivel CHAR (1),
	foto CHAR (50),
	precio VARCHAR (4) NOT NULL,
	nombrec VARCHAR (15) NOT NULL,
	FOREIGN KEY (nombrec) REFERENCES CATEGORIA (nombrec)
);


CREATE TABLE INGREDIENTE (
	nombrei VARCHAR (10) PRIMARY KEY,
	unidades VARCHAR (3),
	almacen CHAR (10)
);

CREATE TABLE UTILIZA (
	nombrei VARCHAR (10) NOT NULL,
	nombrep VARCHAR (15) NOT NULL,
	cantidad INTEGER (3) NOT NULL,
	PRIMARY KEY (nombrei, nombrep),
	FOREIGN KEY (nombrei) REFERENCES INGREDIENTE (nombrei),
	FOREIGN KEY (nombrep) REFERENCES PLATO (nombrep)
);