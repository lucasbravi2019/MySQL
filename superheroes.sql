CREATE DATABASE superheroes;

CREATE TABLE creador(id_creador INT(11) AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(20) NOT NULL);

CREATE TABLE personajes(id_personaje INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, nombre_real VARCHAR(20) NOT NULL, personaje VARCHAR(20) NOT NULL, inteligencia INT(11) UNSIGNED NOT NULL, fuerza VARCHAR(10) NOT NULL, velocidad INT(11) UNSIGNED NOT NULL, poder INT(11) NOT NULL, aparicion INT(11) UNSIGNED NOT NULL, ocupacion VARCHAR(30) NOT NULL, id_creador INT(11) NOT NULL, FOREIGN KEY (id_creador) REFERENCES creador(id_creador));

INSERT INTO creador (nombre) VALUES ("Marvel");
INSERT INTO creador (nombre) VALUES ("DC Comics");

INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Bruce Banner", 
"Hulk", 
160, 
"600 mil", 
75, 
98, 
1962, 
"Fisico nuclear",
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Tony Stark", 
"Iron Man", 
170, 
"200 mil", 
70, 
123, 
1963, 
"Inventor industrial",
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Thor Odinson", 
"Thor", 
145, 
"Infinita", 
100, 
235, 
1962, 
"Rey de Asgard",
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Wanda Maximoff", 
"Bruja Escarlata", 
170, 
"100 mil", 
90, 
345, 
1964, 
"Bruja",
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Carol Danvers", 
"Capitana Marvel", 
157, 
"250 mil", 
85, 
128, 
1968,
"Oficial de Inteligencia", 
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Thanos", 
"Thanos", 
170, 
"Infinita", 
40, 
306, 
1973,
"Adorador de la muerte", 
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Peter Parker", 
"Spiderman", 
165, 
"25 mil", 
80, 
74, 
1962,
"Fotografo", 
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Steve Rogers", 
"Capitan America", 
145, 
"600", 
45, 
60, 
1941,
"Oficial Federal", 
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Bobby Drake", 
"Ice Man", 
140, 
"2 mil", 
64, 
122, 
1963,
"Contador", 
1);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Barry Allen", 
"Flash", 
160, 
"10 mil", 
120, 
168, 
1956,
"Cientifico Forense",
2);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Bruce Wayne", 
"Batman", 
170, 
"500", 
32, 
47, 
1939,
"Hombre de negocios", 
2);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Clark Kent", 
"Superman", 
165, 
"Infinita", 
120, 
182, 
1948,
"Reportero", 
2);
INSERT INTO personajes (nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES (
"Diana Prince", 
"Mujer Maravilla", 
160, 
"Infinita", 
95, 
127, 
1949, 
"Princesa Guerrera",
2);

SELECT * FROM personajes;

UPDATE personajes SET aparicion = 1938 WHERE personaje = "Superman";
SELECT * FROM personajes;

DELETE FROM personajes WHERE personaje = "Flash";
SELECT * FROM personajes;

DROP DATABASE superheroes;