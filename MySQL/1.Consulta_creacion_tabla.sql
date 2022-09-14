## Modulo 4 - Consultas creacion de tablas, actualizacion y eliminacion

## CONSULTA DE CREACION DE TABLA

/* Puedes crear una nueva tabla a partir de una sentencia  SELECT para poder duplicar 
la estructura completa de  la misma o sólo parte de ella.
El siguiente ejemplo, genera una copia de una tabla  existente, incluyendo todos sus registros */

CREATE TABLE Clientes_Copia
SELECT * FROM laboratorio.clientes_neptuno;


CREATE TABLE Cliente_Francia
SELECT IDCLIENTE, NOMBRECOMPANIA, PAIS FROM clientes_copia
WHERE PAIS = 'Francia';

CREATE TABLE Pedidos_copia
SELECT * FROM laboratorio.pedidos_neptuno;

CREATE TABLE MEJOR_VENDEDOR
SELECT EMPLEADO,
ROUND(SUM(CARGO), 2) AS FACTURACION,  
ROUND(AVG(CARGO), 2) AS PROMEDIO,  
MAX(CARGO) AS 'MEJOR VENTA',  
MIN(CARGO) AS 'PEOR VENTA',  
COUNT(CARGO) AS VENTAS
FROM PEDIDOS_COPIA  
GROUP BY EMPLEADO
ORDER BY FACTURACION DESC;
