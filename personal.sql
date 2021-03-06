CREATE DATABASE personal;

CREATE TABLE departamentos (id_depto INT AUTO_INCREMENT PRIMARY KEY, nombre_depto VARCHAR(20) NOT NULL, ciudad VARCHAR(15) NOT NULL, cod_director VARCHAR(12) NOT NULL);

CREATE TABLE empleados (id_emp INT AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(30) UNIQUE NOT NULL, sex_emp CHAR(1) NOT NULL, fec_nac DATE NOT NULL, fec_incorporacion DATE NOT NULL, sal_emp FLOAT NOT NULL, comision_emp FLOAT NOT NULL, cargo_emp VARCHAR(15) NOT NULL, cod_jefe VARCHAR(12) NOT NULL, id_depto INT, FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto));

INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (1000,'GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (1500,'PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (2000,'VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (2100,'VENTAS','BARCELONA','16.211.383');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (2200,'VENTAS','VALENCIA','16.211.383');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (2300,'VENTAS','MADRID','16.759.060');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (3000,'INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (3500,'MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (4000,'MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (4100,'MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (4200,'MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO departamentos (id_depto, nombre_depto, ciudad, cod_director) VALUES (4300,'MANTENIMIENTO','MADRID','16.759.060');

INSERT INTO `empleados` VALUES (222,'José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222',3500);
INSERT INTO `empleados` VALUES (333,'Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (444,'Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (555,'Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (666,'Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (777,'Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333',4000);
INSERT INTO `empleados` VALUES (782,'Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383',1500);
INSERT INTO `empleados` VALUES (219,'Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (111,'Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333',4200);
INSERT INTO `empleados` VALUES (383,'Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269',1500);
INSERT INTO `empleados` VALUES (060,'Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269',3000);
INSERT INTO `empleados` VALUES (802,'William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (221,'Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269',3500);
INSERT INTO `empleados` VALUES (331,'Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269',3500);
INSERT INTO `empleados` VALUES (099,'Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269',1000);
INSERT INTO `empleados` VALUES (144,'Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269',2000);
INSERT INTO `empleados` VALUES (269,'María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,1000);
INSERT INTO `empleados` VALUES (343,'Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269',4000);
INSERT INTO `empleados` VALUES (334,'Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (335,'Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060',3000);
INSERT INTO `empleados` VALUES (336,'Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383',1500);
INSERT INTO `empleados` VALUES (337,'Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (338,'Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333',4300);
INSERT INTO `empleados` VALUES (689,'Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (785,'Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (898,'Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333',4100);

-- 1
SELECT * FROM empleados;
-- 2
SELECT * FROM departamentos;
-- 3
SELECT nombre_depto FROM departamentos;
-- 4
SELECT nombre, sal_emp FROM empleados;
-- 5
SELECT comision_emp FROM empleados;
-- 6
SELECT * FROM empleados WHERE cargo_emp = "Secretaria";
-- 7
SELECT * FROM empleados WHERE cargo_emp = "Vendedor" ORDER BY nombre;
-- 8
SELECT nombre, cargo_emp FROM empleados ORDER BY sal_emp;
-- 9
SELECT nombre AS "Nombre", cargo_emp AS "Cargo" FROM empleados;
-- 10
SELECT sal_emp, comision_emp FROM empleados WHERE id_depto = 2000 ORDER BY comision_emp; 
-- 11
SELECT sal_emp, comision_emp, (sal_emp + comision_emp + 500) AS "Total a pagar" FROM empleados WHERE id_depto = 3000;
-- 12
SELECT * FROM empleados WHERE nombre like "J%";
-- 13
SELECT nombre, sal_emp, comision_emp, (sal_emp + comision_emp) AS "Total a pagar" FROM empleados WHERE comision_emp > 1000;
-- 14
SELECT nombre, sal_emp, comision_emp, (sal_emp + comision_emp) AS "Total a pagar" FROM empleados WHERE comision_emp = 0;
-- 15
SELECT * FROM empleados WHERE sal_emp < comision_emp;
-- 16
SELECT * FROM empleados WHERE sal_emp * .3 >= comision_emp;
-- 17
SELECT * FROM empleados WHERE NOT nombre like "MA%";
-- 18
SELECT * FROM departamentos WHERE nombre_depto = "Ventas" OR nombre_depto = "Investigacion" OR nombre_depto = "Mantenimiento";
-- 19
SELECT * FROM departamentos WHERE nombre_depto != "Ventas" AND nombre_depto != "Investigacion" AND nombre_depto != "Mantenimiento";
-- 20
SELECT *, MAX(sal_emp) AS "Salario mas alto" FROM empleados;
-- 21
SELECT * FROM empleados ORDER BY nombre DESC LIMIT 1; 
-- 22
SELECT MAX(sal_emp), MIN(sal_emp), (MAX(sal_emp) - MIN(sal_emp)) FROM empleados;
-- 23
SELECT nombre_depto, AVG(sal_emp) FROM empleados INNER JOIN departamentos ON empleados.id_depto = departamentos.id_depto GROUP BY nombre_depto;
SELECT * FROM empleados INNER JOIN departamentos ON empleados.id_depto = departamentos.id_depto ORDER BY nombre_depto;
-- 24
SELECT nombre_depto AS "Departamento", COUNT(id_emp) AS "Cantidad de empleados" FROM empleados INNER JOIN departamentos ON empleados.id_depto = departamentos.id_depto GROUP BY nombre_depto HAVING COUNT(id_emp) > 3; 
-- 25
SELECT nombre, cod_jefe, COUNT(id_emp) FROM empleados GROUP BY cod_jefe HAVING COUNT(id_emp) >= 2;
-- 26
SELECT GROUP_CONCAT(nombre) AS "Empleados", COUNT(*) AS "Empleados por departamento", nombre_depto FROM empleados INNER JOIN departamentos ON empleados.id_depto = departamentos.id_depto GROUP BY nombre_depto; 
-- 27
SELECT nombre, sal_emp FROM empleados WHERE sal_emp >= (SELECT AVG(sal_emp) FROM empleados);

