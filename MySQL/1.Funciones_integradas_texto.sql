## Modulo 3 - Funciones Integradas de Texto

# 1. Función CONCAT()
# Esta función permite concatenar (uniﬁcar) cadenas  de caracteres 
# (valores de campo o valores constantes  de texto) en una sola columna. 

SELECT CONCAT('Sr./a. ', NOMBRE, ' ', APELLIDOS) as 'Nombre completo' FROM empleados;

# 2. Función CONCAT_WS()
/* Esta función permite concatenar (uniﬁcar)  cadenas de caracteres en una sola columna.  
A diferencia de la función CONCAT, en el primer  argumento de esta función se debe especiﬁcar  
el carácter a utilizar para separar las cadenas  a concatenar (WS: WITH SEPARATOR).*/

SELECT CONCAT_WS('-', nombre, apellidos, idempleado, cargo) as 'Datos Completos' FROM empleados;

# 3. Función UPPER()
# Esta función convierte a mayúsculas el valor de un campo.  

SELECT UPPER(nombre) Nombres FROM empleados;

# 4. Función LOWER()
# Esta función convierte a minúsculas el valor de un campo.

SELECT LOWER(nombre) NOMBRE FROM empleados;

# 5. Función LEFT()
# Esta función permite obtener los primeros caracteres de una cadena.

SELECT CONCAT(LEFT(nombre,1), '.') AS Inicial_nombre FROM empleados;

# 6. Función RIGHT()
# Esta función permite obtener los últimos caracteres de una cadena

SELECT RIGHT(FechaNacimiento, 2) as 'Día nacimiento' FROM empleados;

# 7. Función SUBSTRING()
/*  Esta función permite extraer, a partir de una determinada  posición, 
una determinada cantidad de caracteres.*/

SELECT SUBSTRING(FechaNacimiento, 6, 2) as 'Mes nacimiento' FROM empleados;

# 8. Función CHAR_LENGTH()
/* Esta función permite contabilizar la cantidad de  caracteres que contiene una cadena, 
e incluye los  espacios en blanco.*/

SELECT direccion, CHAR_LENGTH(direccion) as 'Cantidad de caracteres' FROM clientes;

# 9. Función LOCATE()
# Esta función devuelve la primera posición en la que  aparece una cadena.

SELECT cargo, LOCATE('de',cargo) 'Posición' from empleados;

# 10. Función LTRIM()
# Esta función permite quitar los espacios en blanco  iniciales de una cadena.

SELECT LTRIM(direccion) Direccion_Correcta from clientes;

# 11. Función RTRIM()
# Esta función permite quitar los espacios en blanco ﬁnales  de una cadena.

SELECT RTRIM(direccion) Direccion_Correcta from clientes;


# 12. Función TRIM()
# Esta función permite quitar los espacios en blanco, tanto  iniciales como ﬁnales, de una cadena.

SELECT TRIM(direccion) Direccion_Correcta from clientes;

# 13. Función REPLACE()
# Esta función permite buscar y reemplazar una cadena  de caracteres por otra.

SELECT REPLACE(direccion, '34', 'Treinta y Cuatro') Direccion from clientes;

