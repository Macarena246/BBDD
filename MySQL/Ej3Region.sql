CREATE DATABASE IF NOT EXISTS EMPRESA2;

USE EMPRESA2;

CREATE TABLE REGION(
    CodigoRegion CHAR (5) PRIMARY KEY NOT NULL,
    NombreRegion VARCHAR (20) NOT NULL
);

CREATE TABLE PROVINCIA (
    CodigoProvincia CHAR (5) PRIMARY KEY NOT NULL,
    NombreProvincia VARCHAR (10) NOT NULL,
    CodigoRegion CHAR (5) NOT NULL,
    FOREIGN KEY (CodigoRegion) REFERENCES REGION(CodigoRegion)
);

CREATE TABLE LOCALIDAD (
    CodigoLocalidad CHAR (5) PRIMARY KEY,
    NombreLocalidad VARCHAR (20) NOT NULL,
    CodigoProvincia CHAR (5) NOT NULL,
    FOREIGN KEY (CodigoProvincia) REFERENCES PROVINCIA (CodigoProvincia)
);

CREATE TABLE EMPLEADO (
    idEmpleado CHAR (4) PRIMARY KEY NOT NULL,
    dniEmpleado CHAR (9) NOT NULL,
    NombreEmpleado VARCHAR (30) NOT NULL,
    Telefono CHAR (9) NOT NULL,
    Salario VARCHAR (6) NOT NULL
);