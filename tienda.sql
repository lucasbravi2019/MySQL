CREATE DATABASE tienda;

CREATE TABLE fabricante(codigo INT(10) AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(100) NOT NULL);

CREATE TABLE producto(codigo INT(10) AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(100) NOT NULL, precio DOUBLE NOT NULL, codigo_fabricante INT(10) NOT NULL, FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo));

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);


-- 1
SELECT nombre FROM producto;
-- 2
SELECT nombre, precio FROM producto;
-- 3
SELECT * FROM producto;
-- 4
SELECT nombre, ROUND(precio) AS "Precio" FROM producto;
-- 5
SELECT fabricante.codigo FROM fabricante, producto WHERE producto.codigo_fabricante = fabricante.codigo;
-- 10
SELECT DISTINCT fabricante.codigo FROM fabricante, producto WHERE producto.codigo_fabricante = fabricante.codigo;
-- 11
SELECT nombre FROM fabricante ORDER BY nombre ASC;
-- 12
SELECT nombre FROM producto ORDER BY nombre ASC, precio DESC;
-- 13
SELECT * FROM fabricante LIMIT 5;
-- 14
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
-- 15
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
-- 16
SELECT nombre FROM producto WHERE precio <= 120;
-- 17
SELECT * FROM producto WHERE precio BETWEEN 60 AND 200;
-- 18
SELECT * FROM producto WHERE codigo_fabricante IN (1, 3, 5);
-- 23
SELECT * FROM producto WHERE nombre like "Portatil%";
-- Multitabla
-- 1
SELECT producto.codigo, producto.nombre, fabricante.codigo, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo;
-- 2
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre;
-- 3
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio LIMIT 1;
-- 4
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre = "Lenovo";
-- 5
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre = "Crucial" AND producto.precio > 200;
-- 6
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre IN ("Asus", "Hewlett-Packard");
-- 7
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo AND producto.precio >= 180 ORDER BY producto.precio DESC, producto.nombre;
-- LEFT RIGHT JOIN
-- 1
SELECT * FROM fabricante LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante; 
-- 2
SELECT fabricante.codigo, fabricante.nombre FROM fabricante LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante WHERE producto.codigo_fabricante IS NULL; 
-- SUBCONSULTAS
-- 1
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Lenovo");
-- 2
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Lenovo"));
-- 3
SELECT nombre FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Lenovo"));
-- 4
SELECT * FROM producto WHERE precio > (SELECT AVG(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Asus")) AND codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Asus");
-- IN NOT IN
-- 1
SELECT DISTINCT fabricante.nombre FROM fabricante, producto WHERE producto.codigo_fabricante IN (fabricante.codigo);
-- 2
SELECT DISTINCT fabricante.* FROM fabricante WHERE fabricante.codigo NOT IN (SELECT producto.codigo_fabricante FROM producto, fabricante WHERE producto.codigo_fabricante IN (fabricante.codigo));
-- HAVING
-- 1
SELECT fabricante.nombre, COUNT(producto.codigo) FROM fabricante, producto WHERE fabricante.codigo = producto.codigo_fabricante GROUP BY producto.codigo_fabricante HAVING COUNT(producto.codigo) = (SELECT COUNT(codigo) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Lenovo"));