## CONSULTA DE DATOS ANEXADOS

/* Se pueden insertar datos (provenientes de otra  tabla) 
en una tabla a partir de una sentencia SELECT. De este modo, podrás realizar una  
inserción masiva de datos desde una tabla  hacia otra en una sola instrucción o sentencia.

INSERT INTO TablaDestino (Columna1, ..., ColumnaX)
SELECT (Columna1, ..., ColumnaX) FROM TablaOrigen;

Nota: la tabla de destino (llamada  TablaDestino en el ejemplo anterior) 
debe  tener la misma estructura que la consulta  SELECT; es decir, 
la misma cantidad de  columnas y tipos de datos compatibles */

## CONSULTA DE ELIMINACION

/* Para eliminar registros de una tabla, se utiliza la  sentencia DELETE. 
Al hacerlo, se deberá especiﬁcar la condición que deben cumplir los registros  
de la tabla a eliminar.*/

DELETE FROM productos_neptuno WHERE idProducto = 1;

## TRUNCATE TABLE
/* La sentencia DELETE se puede utilizar para  eliminar todos los registros de una tabla, 
pero  tiene la desventaja de no ser tan eﬁciente, ya  que, por ejemplo (entre otras limitaciones), 
no  resetea los valores de los campos  AUTO_INCREMENT.
Por este motivo, si se opta por vaciar  completamente la tabla, es recomendable utilizar  
la sentencia TRUNCATE TABLE, la cual elimina  los registros en su totalidad y deja vacía la  tabla*/

TRUNCATE TABLE productos_neptuno;
	