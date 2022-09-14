/* CLASE 2-Modulo 2-Introduccion a Base de Datos

IMPORTACION DE TABLAS EXTERNAS*/

create database laboratorio_teoria;
use laboratorio_teoria;


insert into articulos
set ARTICULOID = 95, NOMBRE = 'Webcam con Micrófono Plug & Play',
	PRECIO = 513.35, STOCK = 39;
insert into articulos
set ARTICULOID = 157, NOMBRE = 'Apple AirPods Pro',
	PRECIO = 979.75, STOCK = 152;
insert into articulos
set ARTICULOID = 335, NOMBRE = 'Lavasecarropas Automático Samsung',
	PRECIO = 1589.50, STOCK = 12;
insert into articulos
set ARTICULOID = 411, NOMBRE = 'Gloria Trevi / Gloria / CD+DVD',
	PRECIO = 2385.70, STOCK = 2;


/*Consultas del lenguaje SQL

Clausulas SELECT-Mostrar todo el contenido de una tabla*/

select * from iris;

# Mostrar algunos campos de una tabla

SELECT Id FROM iris;
SELECT Id, Species FROM iris;

# Generar columnas en una consulta

SELECT *, Precio * 1.25 as 'Precio con Aumento' FROM Articulos;

SELECT *, 'China' as Origen FROM Articulos;

# Ordenamiento de datos: cláusula ORDER BY

/*La cláusula ORDER BY tiene como ﬁnalidad  ordenar los resultados de las consultas por  otras columnas. 
Cuando se genera un SELECT  en base a una tabla, el resultado siempre se  muestra ordenado en base al campo índice  (PRIMARY KEY) por defecto.
Tenga en cuenta que:
El orden puede ser ascendente (por defecto)  o descendente.
Se puede ordenar por una columna o un  conjunto de ellas.

En el siguiente ejemplo, se ordena el resultado de la  consulta 
por el campo apellido (por defecto, en orden  ascendente):*/

SELECT nombre, apellido FROM laboratorio.clientes ORDER BY apellido;

SELECT nombre, apellido FROM laboratorio.clientes ORDER BY apellido DESC;
SELECT * FROM laboratorio.articulos ORDER BY STOCK DESC;

# Limitar la cantidad de registros

SELECT nombre, apellido FROM laboratorio.clientes LIMIT 2;

# OFFSET

SELECT nombre, apellido FROM laboratorio.clientes LIMIT 2 OFFSET 1;

/* Predicado de  consulta SQL
Cláusula WHERE
Debemos mostrar antes los Operadores de comparacion, que esta en la presentacion*/

SELECT Nombre FROM articulos WHERE ARTICULOID = 95;
SELECT Nombre, Precio FROM Articulos WHERE Precio < 600;

# Debemos mostrar antes los Operadores logicos, que esta en la presentacion

SELECT * FROM Articulos WHERE precio >= 600 OR stock >= 20;
SELECT * FROM Articulos WHERE Precio < 1200 AND stock < 50;

/* Operadores BETWEEN / NOT BETWEEN

BETWEEN mínimo AND máximo*/

SELECT * FROM Articulos WHERE precio BETWEEN 800 AND 2000;

# NOT BETWEEN mínimo AND máximo

SELECT * FROM Articulos WHERE precio NOT BETWEEN 800 AND 2000;

# Operadores IN / NOT IN

SELECT * FROM Articulos WHERE articuloid IN (95,335,411);

SELECT * FROM Articulos WHERE nombre IN ('Webcam con Micrófono Plug & Play', 'Apple AirPods Pro');

SELECT * FROM Articulos WHERE nombre NOT IN ('Webcam con Micrófono Plug & Play', 'Lavasecarropas Automático Samsung');

/* Operadores LIKE / NOT LIKE
El operador LIKE se usa para hacer
comparaciones entre cadenas y patrones.

Para deﬁnir estos patrones, se hace uso de  comodines, 

% Coincidencia con cualquier  número de caracteres,  incluso ninguno.

- Coincidencia con un único carácter.
*/

SELECT * FROM Articulos WHERE nombre LIKE '%5%';









































































































