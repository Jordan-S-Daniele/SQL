# Modulo 3 - Funciones Integradas de Agrupamiento

/* Estas funciones se denominan funciones de agrupamiento  porque operan 
sobre conjuntos de registros, en lugar de  hacerlo sobre datos individuales. 
Tienen la característica de  agrupar los resultados en un solo registro de salida.*/


# 1. Función COUNT()
/* Esta función retorna la cantidad de valores
que contiene un campo especiﬁcado.
Por ejemplo, si se quiere saber la cantidad de  productos que hay en la tabla productos_neptuno*/

SELECT COUNT(*) FROM productos_neptuno;

/* Puede combinarse  con la cláusula WHERE. 
Por ej., si se quiere saber cuántas  categorias son de Bebidas en el campo  NombreCategoria, la sentencia sería:*/

SELECT COUNT(*) FROM productos_neptuno WHERE NombreCategoria = 'Bebidas';

# 2. Función SUM()
/* Esta función retorna la suma de los valores que contiene  el campo especiﬁcado.
Por ejemplo, si se quiere saber el de ventas que  hay en la tabla pedidos_neptuno */

SELECT ROUND(SUM(Cargo),2) AS 'Total Ventas' FROM pedidos_neptuno;

# 3. Función MIN()
/* Esta función permite calcular el valor mínimo de un campo.
Por ejemplo, para conocer cuál es el menor precio que  ﬁgura en la tabla articulos */

SELECT MIN(Cargo) FROM pedidos_neptuno;

# 4 . Función MAX()
/* Permite averiguar el valor máximo de un campo.
Por ejemplo, para conocer cuál es el mayor precio de todos  los articulos */

SELECT MAX(Cargo) FROM pedidos_neptuno;

# 5. Función AVG()
/*  Esta función retorna el valor promedio de los valores del  campo especiﬁcado.
Por ejemplo, para calcular el precio promedio de todos los  productos contenidos en la tabla Productos */

SELECT AVG(Cargo) FROM pedidos_neptuno;
