## CONSULTA DE ACTUALIZACION

/*Podemos modiﬁcar registros de una tabla utilizando la  sentencia UPDATE.
Mediante la cláusula WHERE se puede establecer una  condición; de esta manera, 
sólo las ﬁlas/registros que  cumplan esa condición serán actualizadas.*/

UPDATE productos SET Nombre = 'RAQUETA TENIS' WHERE Nombre = 'RAQUETA DE PINBALL';

UPDATE productos_neptuno SET PrecioUnidad = '30' WHERE NombreCategoria = 'Bebidas';


