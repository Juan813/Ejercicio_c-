CREATE DATABASE VENTA_ENTRADAS;
USE VENTA_ENTRADAS;
CREATE TABLE ESPECTADORES(
DNI_CLIENTE VARCHAR(9) PRIMARY KEY NOT NULL,
NOMBRE VARCHAR(20) NOT NULL,
DIRECCION VARCHAR(50) NOT NULL,
TELEFONO INT(9) NOT NULL,
CIUDAD VARCHAR(30) NOT NULL,
NTARJETA INT(20) NOT NULL
);
CREATE TABLE RECINTOS(
COD_RECINTO INT PRIMARY KEY IDENTITY,
NOMBRE VARCHAR(20) NOT NULL,
DIRECCION VARCHAR(50) NOT NULL,
CIUDAD VARCHAR(30) NOT NULL,
TELEFONO INT(15) NOT NULL,
HORARIO VARCHAR(4) NOT NULL,
CHECK(HORARIO IN('HOR1','HOR2','HOR3'))

);
CREATE TABLE ZONAS_RECINTOS(
ZONA INT PRIMARY KEY IDENTITY,
CAPACIDAD INT(4),
COD_RECINTO INT,
FOREIGN KEY(COD_RECINTO) REFERENCES RECINTOS(COD_RECINTO)
);
CREATE TABLE ESPECTACULOS(
COD_ESPECTACULO INT PRIMARY KEY IDENTITY,
COD_RECINTO INT,
NOMBRE VARCHAR(30) NOT NULL,
TIPO VARCHAR(15),
FECHA_INICIO DATE NOT NULL,
FECHA_FINAL DATE NOT NULL,
INTERPRETE VARCHAR(20) NOT NULL,
FOREIGN KEY(COD_RECINTO) REFERENCES RECINTOS(COD_RECINTO)
);
CREATE TABLE REPRESENTACIONES(
COD_REPRESENTACIONES INT PRIMARY KEY IDENTITY,
FECHA DATE NOT NULL,
HORA TIME NOT NULL,
COD_ESPECTACULO INT,
FOREIGN KEY(COD_ESPECTACULO) REFERENCES ESPECTACULOS(COD_ESPECTACULO)
);
CREATE TABLE PRECIOS_ESPECTACULOS(
COD_PRECIO INT PRIMARY KEY IDENTITY,
COD_ESPECTACULO INT,
COD_RECINTO INTL,
ZONA VARCHAR(10) NOT NULL,
PRECIO INT(4),
FOREIGN KEY (COD_ESPECTACULO) REFERENCES ESPECTACULOS(COD_ESPECTACULO),
FOREIGN KEY (COD_RECINTO) REFERENCES ZONAS_RECINTOS(COD_RECINTO)
);
CREATE TABLE ASIENTOS(
COD_ASIENTO INT PRIMARY KEY IDENTITY,
COD_RECINTO INT,
ZONA INT NOT NULL,
NUMERO INT(3) NOT NULL,
FILA INT(3) NOT NULL,
FOREIGN KEY (COD_RECINTO) REFERENCES RECINTOS(COD_RECINTOS)
);
CREATE TABLE ENTRADAS(
COD_ENTRADA INT PRIMARY KEY IDENTITY,
COD_ESPECTACULO INT,
COD_RECINTO INT,
ZONA INT,
DNI_CLIENTE VARCHAR NOT NULL,
COD_ASIENTO INT,
FECHA DATE NOT NULL,
HORA TIME NOT NULL,
FILA INT(3) NOT NULL,
NUMERO INT(5) NOT NULL,
FOREIGN KEY (COD_ESPECTACULO) REFERENCES ESPECTACULOS(COD_ESPECTACULO),
FOREIGN KEY (COD_RECINTO) REFERENCES ZONA_RECINTOS(COD_RECINTO),
FOREIGN KEY (ZONA) REFERENCES ZONA_RECINTOS(ZONA),
FOREIGN KEY (DNI_CLIENTE) REFERENCES ESPECTADORES(DNI_CLIENTE),
FOREIGN KEY (COD_ASIENTO) REFERENCES RECINTOS(COD_ASIENTO)
);
INSERT INTO ESPECTADORES (DNI_CLIENTE, NOMBRE, DIRECCION, TELEFONO, CIUDAD, NTARJETA)
VALUES ("70861843Q", "JUAN ANTONIO GARCIA MARTINEZ", "CONSTRUCTOR TAPIA 1", "616707466", "SAN FERNANDO", "1234567812345678");
INSERT INTO ESPECTADORES (DNI_CLIENTE, NOMBRE, DIRECCION, TELEFONO, CIUDAD, NTARJETA)
VALUES ("86758483R", "SOFIA NADAL BLANDINO", "SANTO ANGEL 14", "615876534", "CHICLANA", "0192837401928354");
INSERT INTO RECINTOS (NOMBRE, DIRECCION,CIUDAD,TELEFONO, HORARIO)
VALUES ("TEATRO FALLA","PLAZA DEL REY","CADIZ","956748392","HOR1");
INSERT INTO RECINTOS (NOMBRE, DIRECCION,CIUDAD,TELEFONO, HORARIO)
VALUES ("TEATRO CALDERON","PLZA DE ESPAÑA","CHICLANA","956744352","HOR2");
INSERT INTO ZONAS_RECINTOS (CAPACIDAD)
VALUES ("1000");
INSERT INTO ZONAS_RECINTOS (CAPACIDAD)
VALUES ("1100");
INSERT INTO ESPECTACULOS (NOMBRE,TIPO,FECHA_INICIO,FECHA_FINAL,INTERPRETE)
VALUES ("EL REY LEON","MUSICAL","24/04/2022","31/12/2022","BUSTAMANTE");
INSERT INTO ESPECTACULOS (NOMBRE,TIPO,FECHA_INICIO,FECHA_FINAL,INTERPRETE)
VALUES ("TINA","MUSICAL","30/04/2022","31/12/2022","ROSALIA");
INSERT INTO REPRESENTACIONES(FECHA,HORA)
VALUES ("24/04/2022","HOR1");
INSERT INTO REPRESENTACIONES(FECHA,HORA)
VALUES ("30/04/2022","HOR2");
INSERT INTO PRECIOS_ESPECTACULOS(ZONA,PRECIO)
VALUES ("A","54");
INSERT INTO PRECIOS_ESPECTACULOS(ZONA,PRECIO)
VALUES ("B","44");
INSERT INTO ASIENTOS(ZONA, NUMERO,FILA)
VALUES ("A","1","1");
INSERT INTO ASIENTOS(ZONA, NUMERO,FILA)
VALUES ("A","2","1");
INSERT INTO ENTRADAS(FECHA,HORA,FILA,NUMERO)
VALUES ("24/04/2022","22:00","1","1");
INSERT INTO ENTRADAS(FECHA,HORA,FILA,NUMERO)
VALUES ("24/04/2022","22:00","1","2");
UPDATE PRECIOS_ESPECTACULOS
  SET ZONA="A",PRECIO="54"
  WHERE PRECIO="50";





