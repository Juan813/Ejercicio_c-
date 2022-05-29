CREATE SCHEMA ACT_1_T9;
CREATE TABLE tblUsuarios_GuillermoRodriguez
(
idx INT AUTO_INCREMENT,
usuario VARCHAR(20),
nombre VARCHAR(20),
sexo VARCHAR(1),
nivel TINYINT,
email VARCHAR(50),
telefono VARCHAR(20),
marca VARCHAR(20),
compañia VARCHAR(20),
saldo FLOAT,
activo BOOLEAN,
PRIMARY KEY(idx)
);
INSERT INTO tblUsuarios_GuillermoRodriguez VALUES 
('1','GUI0213','Guillermo','H','1','Guillermo@hotmail.com','654696216','APPLE','MOVISTAR','20.5','1'),
('2','MAR0542','Marcos','H','2','Marcos@hotmail.es','658142354','SAMSUNG','ORANGE','50','1'),
('3','MAR5488','Marta','M','3','Marta@hotmail.es','621489547','XIAOMI','YOIGO','40','0'),
('4','MIR5544','Miriam','M','2','Miriam@hotmail.es','654213879','APPLE','VODAFONE','60','0'),
('5','ALB2158','Alberto','H','1','Alberto@hotmail.com','652134879','NOKIA','YOIGO','20','1'),
('6','JUA6548','Juan','H','2','Juan@hotmail.es','625423617','XIAOMI','MOVISTAR','25.50','0'),
('7','ROD2154','Rodrigo','H','1','Rodrigo@hotmail.es','621479547','SAMSUNG','SIMYO','40','1'),
('8','JAI5498','Jaime','H','3','Jaime@hotmail.es','623489547','LG','YOIGO','100','0'),
('9','BRE5421','Brenda','M','2','Brenda@hotmail.es','625874196','APPLE','SAMSUNG','20','1'),
('10','JUL5489','Julio','H','1','Julio@hotmail.es','621489547','XIAOMI','YOIGO','30','1'),
('11','JESS3216','Jessica','M','3','Jessica@hotmail.es','621589547','LG','WALLIE','80','1'),
('12','RIC8283','Ricardo','H','2','Ricardo@hotmail.com','655145604','MOTOROLA','IUSACELL','150','1'),
('13','LUC5488','Lucas','H','3','Lucas@hotmail.es','635874964','XIAOMI','YOIGO','140','0'),
('14','BRE8106','Brenda','M','3','brenda2@gmail.com','651001351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','Lucia','M','3','lucia@gmail.com','655144992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','Juan','H','0','juan@outlook.com','655100517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','Elpidio','H','1','elpidio@outlook.com','651459938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','Jessica','M','3','jessica2@live.com','655330143','SONY','IUSACELL','200','1'),
('19','LET4015','Leticia','M','2','leticia@yahoo.com','651434019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','Luis','H','3','luis2@live.com','651005085','SONY','UNEFON','150','1');

/*Listar los nombres de los usuarios.*/
SELECT nombre  FROM tblUsuarios_GuillermoRodriguez;
/*Calcular el saldo máximo de los usuarios de sexo “Mujer”.*/
SELECT MAX(saldo) FROM tblUsuarios_GuillermoRodriguez WHERE sexo='M';
/*Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE marca IN ('NOKIA','BLACKBERRY','SONY');
/*Contar los usuarios sin saldo o inactivos.*/
SELECT COUNT(*) FROM tblUsuarios_GuillermoRodriguez WHERE SALDO<= 0;
/*Listar el login de los usuarios con nivel 1, 2 o 3.*/
SELECT usuario 	FROM tblUsuarios_GuillermoRodriguez WHERE NIVEL IN (1,2,3);
/*Listar los números de teléfono con saldo menor o igual a 300.*/
SELECT telefono FROM tblUsuarios_GuillermoRodriguez WHERE saldo<=300;
/*Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL.*/
SELECT SUM(saldo) FROM tblUsuarios_GuillermoRodriguez WHERE compañia = 'NEXTEL';
/*Contar el número de usuarios por compañía telefónica.*/
SELECT compañia, COUNT(*) FROM tblUsuarios_GuillermoRodriguez GROUP BY compañia ;
/*Contar el número de usuarios por nivel.*/
SELECT nivel, COUNT(*) FROM tblUsuarios_GuillermoRodriguez GROUP BY nivel;
/*Listar el login de los usuarios con nivel 2.*/
SELECT nivel FROM tblUsuarios_GuillermoRodriguez WHERE nivel='2';
/*Mostrar el email de los usuarios que usan Gmail.*/
SELECT email FROM tblUsuarios_GuillermoRodriguez WHERE  email LIKE'%@gmail.com';
/*Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE marca IN('LG','SAMSUNG','MOTOROLA');
/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE marca NOT IN  ('LG','SAMSUNG');
/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL.*/
SELECT telefono,usuario FROM tblUsuarios_GuillermoRodriguez WHERE compañia IN('IUSACELL');
/*Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia NOT IN ('TELCEL');
/*Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA.*/
SELECT AVG (saldo) FROM tblUsuarios_GuillermoRodriguez WHERE marca='NOKIA';
/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia IN('IUSACELL','AXEL');
/*Mostrar el email de los usuarios que no usan Yahoo.*/
SELECT email FROM tblUsuarios_GuillermoRodriguez WHERE email NOT LIKE '%@yahoo.com';
/*Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia NOT IN('TELCEL','IUSACELL');
/*Listar el login y teléfono de los usuarios con compañía telefónica UNEFON.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia ='UNEFON';
/*Listar las diferentes marcas de celular en orden alfabético descendentemente.*/
SELECT DISTINCT marca FROM tblUsuarios_GuillermoRodriguez ORDER BY(marca) DESC;
/*Listar las diferentes compañías en orden alfabético aleatorio.*/
SELECT compañia FROM tblUsuarios_GuillermoRodriguez compañia ORDER BY RAND() ;
/*Listar el login de los usuarios con nivel 0 o 2.*/
SELECT usuario FROM tblUsuarios_GuillermoRodriguez WHERE nivel IN('0','2');
/*Calcular el saldo promedio de los usuarios que tienen teléfono marca LG.*/
SELECT  AVG(saldo) FROM tblUsuarios_GuillermoRodriguez WHERE marca='LG';




/*ACTIVIDAD 2 TEMA 9*/
/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE marca NOT IN('LG','SAMSUNG');
/*Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia 	NOT IN('TELCEL','IUSACELL');
/*Listar las diferentes marcas de celular en orden alfabético descendentemente.*/
SELECT DISTINCT marca FROM tblUsuarios_GuillermoRodriguez ORDER BY(marca) DESC;
/*Listar las diferentes compañías en orden alfabético aleatorio.*/
SELECT DISTINCT compañia FROM tblUsuarios_GuillermoRodriguez ORDER BY RAND();
/*Listar el login de los usuarios con nivel 0 o 2.*/
SELECT usuario FROM tblUsuarios_GuillermoRodriguez WHERE nivel IN('0','2');
/*Calcular el saldo promedio de los usuarios que tienen teléfono marca LG.*/
SELECT AVG (saldo) FROM tblUsuarios_GuillermoRodriguez WHERE marca IN('LG');
/*Contar el número de usuarios por sexo.*/
SELECT usuario, COUNT(*)  FROM tblUsuarios_GuillermoRodriguez GROUP BY sexo;
/*Listar los números de teléfono sin saldo.*/
SELECT telefono FROM tblUsuarios_GuillermoRodriguez WHERE saldo=0;
/*Calcular el saldo mínimo de los usuarios de sexo “Hombre”.*/
SELECT 	MIN(saldo)  FROM tblUsuarios_GuillermoRodriguez WHERE sexo ='H';
/*Listar los números de teléfono con saldo mayor a 300.*/
SELECT telefono FROM tblUsuarios_GuillermoRodriguez WHERE saldo > 300;
/*Contar el número de usuarios por marca de teléfono.*/
SELECT marca, COUNT(*) FROM tblUsuarios_GuillermoRodriguez GROUP BY  marca ;
/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE marca <> 'LG';
/*Listar las diferentes compañías en orden alfabético ascendentemente.*/
SELECT DISTINCT compañia FROM tblUsuarios_GuillermoRodriguez  ORDER BY(compañia) ASC;
/*Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON.*/
SELECT SUM(saldo) FROM tblUsuarios_GuillermoRodriguez WHERE compañia = 'UNEFON';
/*Mostrar el email de los usuarios que usan Hotmail.*/
SELECT email FROM tblUsuarios_GuillermoRodriguez WHERE email LIKE '%@hotmail%';
/*Listar los nombres de los usuarios sin saldo o inactivos.*/
SELECT nombre FROM tblUsuarios_GuillermoRodriguez WHERE NOT activo OR saldo<='0';
/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia IN('IUSACELL','TELCEL');
/*Listar las diferentes marcas de celular en orden alfabético ascendentemente.*/
SELECT DISTINCT  marca FROM tblUsuarios_GuillermoRodriguez ORDER BY marca ASC;
/*Listar las diferentes marcas de celular en orden alfabético aleatorio.*/
SELECT DISTINCT  marca FROM tblUsuarios_GuillermoRodriguez ORDER BY  RAND();
/*Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON.*/
SELECT usuario,telefono FROM tblUsuarios_GuillermoRodriguez WHERE compañia IN('IUSACELL','UNEFON');
/*Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA.*/
SELECT nombre,telefono FROM tblUsuarios_GuillermoRodriguez WHERE telefono NOT IN('MOTOROLA','NOKIA');
/*Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL.*/
SELECT SUM(SALDO) FROM tblUsuarios_GuillermoRodriguez WHERE compañia='TELCEL';










