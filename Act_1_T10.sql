CREATE DATABASE ACT_1_T10;
CREATE TABLE departamentos
(
codDepto VARCHAR(4),
nombreDpto VARCHAR(20),
ciudad VARCHAR(15),
codDirector VARCHAR(12),
PRIMARY KEY(codDepto)
);
CREATE TABLE empleados
(
nDIEmp VARCHAR(12),
nomEmp VARCHAR(30),
sexEmp CHAR(1),
fecNac DATE,
fecIncorporacion DATE,
salEmp FLOAT,
comisionE FLOAT,
CargoE VARCHAR(15),
jefeID VARCHAR(12),
codDept VARCHAR(4),
FOREIGN KEY (codDept) REFERENCES departamentos (codDepto) ON UPDATE CASCADE,
PRIMARY KEY(nDIEmp)
);

INSERT INTO departamentos VALUES ('1234','Ingenieria','Madrid','123'),('2234','Adminitración','Madrid','321'),
('5621','Química','Barcelona','587'),('6948','Comercialización','Sevilla','213'),
('2587','Transportes','Valencia','987'),('6587','Ventas','Madrid','654');

INSERT INTO empleados VALUES  ('5498','Juan','H','2020/01/03','2019/05/03','500.5','30','Vendedor','No','1234'),
('6548','Jaime','H','2020/05/07','2019/08/10','600.5','45','Secretaria','VendedorSen','2234'),
('6154','Miriam','M','2019/01/03','2018/03/03','700.5','50','Comercial','ComercialSen','5621'),
('8945','Daniel','H','2020/08/03','2019/05/03','300.5','30','Secretaria','ComercialSen','6948'),
('8472','Jorge','H','2020/02/05','2019/03/04','650.5','65','Transportista','No','2587'),
('6912','Edu','H','2019/02/05','2018/03/04','700.5','65','Vendedor','Ejecutivo','6587');


/*Obtén los datos completos de los empleados.*/
SELECT * FROM empleados;
/*Obtén los datos completos de los departamentos.*/
SELECT * FROM departamentos;
/*Obtén los datos de los empleados con cargo ‘Secretaria’.*/
SELECT 	* FROM empleados WHERE CargoE = 'Secretaria';
/*Obtén el nombre y salario de los empleados.*/
SELECT nomEmp,salEmp FROM empleados;
/*Obtén los datos de los empleados vendedores, ordenado por nombre.*/
SELECT * FROM empleados WHERE CargoE = 'Vendedor' ORDER BY nomEmp ASC;
/*Lista el nombre de los departamentos.*/
SELECT DISTINCT nombreDpto FROM departamentos;
/*Obtén el nombre y cargo de todos los empleados, ordenado por salario.*/
SELECT nomEmp,CargoE,salEmp FROM empleados ORDER BY salEmp;
/*Lista los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión.*/
SELECT salEmp,comisionE FROM empleados WHERE codDept=2000 ORDER BY comisionE;
/*Lista todas las comisiones.*/
SELECT DISTINCT comisionE FROM empleados;
/*Obtén el valor total a pagar que resulta de sumar a los empleados del departamento 3000 una bonificación de 500.000, en orden alfabético del empleado*/
SELECT nomEmp,salEmp, (salEmp + 500000) as 'Pago Estimado' FROM empleados WHERE codDept = 3000 ORDER BY nomEmp;
/*Obtén la lista de los empleados que ganan una comisión superior a su sueldo.*/
SELECT nomEmp,comisionE,salEmp FROM empleados WHERE comisionE > salEmp;
/*Lista los empleados cuya comisión es menor o igual que el 30% de su sueldo.*/
SELECT nomEmp,comisionE,salEmp FROM empleados WHERE comisionE<=  (salEmp * 0.3);
/*Elabora un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado.*/
SELECT nomEmp as 'Nombre', CargoE as 'Cargo' FROM empleados ;	
/*Halla el salario y la comisión de aquellos empleados cuyo número de documento de identidad es superior al ‘19.709.802’.*/
SELECT nDIEmp,salEmp,comisionE FROM empleados WHERE nDIEmp>'19.709.802';
/*Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango). 
Liste estos empleados y su cargo por orden alfabético.*/
SELECT nomEmp,CargoE FROM empleados WHERE nomEmp BETWEEN 'J%' AND  'Z%' ORDER BY nomEmp,CargoE;
/*Lista el salario, la comisión, el salario total (salario + comisión), documento de identidad del empleado y nombre, de aquellos empleados que tienen comisión superior a 1.000.000, ordenar el informe por el número del documento de identidad*/
SELECT salEmp,comisionE,nDIEmp, (salEmp+comisionE) as 'Salario total' FROM empleados WHERE comisionE > '1.000.000' ORDER BY nDIEmp;
/*Obtén un listado similar al anterior, pero de aquellos empleados que NO tienen comisión*/
SELECT salEmp,comisionE,nDIEmp, (salEmp+comisionE) as 'Salario total' FROM empleados WHERE comisionE = null ORDER BY nDIEmp;
/*Halla los empleados cuyo nombre no contiene la cadena “MA”*/
SELECT nomEmp FROM empleados WHERE nomEmp NOT LIKE '%MA%';
/*Obtén los nombres de los departamentos que no sean “Ventas” ni “Investigación” NI ‘MANTENIMIENTO’.*/
SELECT nombreDpto FROM departamentos WHERE nombreDpto NOT IN ('Ventas','Investigación','MANTENIMIENTO');
/*Obtén el nombre y el departamento de los empleados con cargo ‘Secretaria’ o ‘Vendedor’, que no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000, ordenados por fecha de incorporación.*/
SELECT nomEmp,codDept,CargoE,fecIncorporacion FROM empleados WHERE CargoE IN('Secretaria','Vendedor') AND CargoE NOT IN ('PRODUCCION') AND salEmp > '1.000.000' ORDER BY fecIncorporacion;