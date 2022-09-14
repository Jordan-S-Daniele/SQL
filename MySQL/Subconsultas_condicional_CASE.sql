## Modulo 5 - Subonsultas - Condicional CASE - Modelo Entida Relacion - Joins

## SUBCONSULTAS

/* Una subconsulta es una consulta, es decir, 
un  SELECT dentro de otra consulta (otro SELECT).  
Su objetivo es obtener un resultado y utilizarlo  
como criterio de búsqueda para obtener un  determinado listado de registros. */

SELECT * FROM clientes WHERE COD_CLIENTE IN
(SELECT CODIGO_CLIENTE FROM pedidos);

## SUBCONSULTA ESCALAR

/* Se denomina subconsulta escalar a aquella  subconsulta 
que devuelve un único resultado  
(como puede ser una suma, un promedio, un  valor máximo, un valor mínimo, etc.) */

SELECT * FROM nacimientos WHERE EDAD_PADRE <
(SELECT AVG(EDAD_PADRE) FROM nacimientos) AND EDAD_MADRE > (SELECT AVG(EDAD_PADRE) FROM nacimientos);

## CONDICIONAL CASE

/* El condicional CASE permite asignar un valor a  una columna 
tomando como referencia otro  valor de la tabla.
Por cada valor o grupo de valores existe un  WHEN y un THEN; 
si encuentra un valor coincidente en algún WHEN, ejecuta el THEN  
correspondiente a ese WHEN; caso contrario,  se ejecuta el ELSE.
Este condicional se debe cerrar con la palabra
END para indicar que el CASE ha ﬁnalizado. */

SELECT *,
CASE 
WHEN EDAD_MADRE < 18 THEN 'ADOLESCENTE'
WHEN EDAD_MADRE BETWEEN 19 AND 25 THEN 'JOVEN'
ELSE 'MADURA'
END as Categoria  FROM nacimientos;

# UNION

SELECT * FROM nacimientos
WHERE sexo = 'Masculino'

UNION

SELECT * FROM nacimientos
WHERE sexo = 'Femenino';

SELECT * FROM nacimientos
WHERE sexo = 'Masculino' AND  EDAD_MADRE =28

UNION

SELECT * FROM nacimientos
WHERE sexo = 'Femenino' AND  EDAD_MADRE =12;

###################################################################

## CONSULTAS RELACIONADAS

/* Es posible consultar datos desde varias tablas en  la misma sentencia SELECT. 
Esto permite realizar  otras dos operaciones de álgebra relacional: 
el  producto cartesiano y la composición interna.*/

## Producto cartesiano

/* Se obtiene mencionando las dos tablas en una  consulta 
sin ninguna restricción en la cláusula  WHERE.
El producto cartesiano de dos tablas son todas las combinaciones 
de todas las ﬁlas de las dos  tablas. 
Usando una sentencia SELECT se deben listar todos los campos de ambas tablas. 
Los  nombres de las tablas se indican en la cláusula  FROM separados con comas.*/

SELECT * FROM clientes, pedidos;

## Composición interna
/* La composición interna se trata de un producto cartesiano  
restringido en donde las tuplas (conjunto de nombres de atributos relacionados) 
que se emparejan deben cumplir una condición determinada.*/

SELECT * FROM clientes, pedidos
WHERE clientes.COD_CLIENTE = pedidos.CODIGO_CLIENTE;

############################################################################






#############################################################################

## CLAUSULA JOIN

## LEFT [OUTER] JOIN
/* Este JOIN devuelve todos los registros de la tabla  de la izquierda 
y los registros que coinciden de la  tabla de la derecha */

SELECT *
FROM tabla1
LEFT JOIN tabla2
ON tabla1.ï»¿Codigo = tabla2.ï»¿Codigo;

## RIGHT [OUTER] JOIN
/* Este JOIN devuelve todos los registros de la tabla  de la derecha 
y los registros que coinciden de la  tabla de la izquierda */

SELECT *
FROM tabla1
RIGHT OUTER JOIN tabla2
ON tabla1.ï»¿Codigo = tabla2.ï»¿Codigo;

## FULL JOIN
/* Este JOIN devuelve todos los registros de ambas tablas  */

SELECT *
FROM tabla1
FULL JOIN tabla2
ON tabla1.ï»¿Codigo = tabla2.ï»¿Codigo;
/* El comando FULL no es soporado por MySQL Workbench.
Para hacer el full se hace una combinacion entre left y right*/

## CROSS JOIN
/*Combina cada registro de la tabla de la izquierda  
con cada registro de la tabla de la derecha, 
sin  hacer coincidir un campo en particular.*/

SELECT * FROM tabla1 CROSS JOIN tabla2;

