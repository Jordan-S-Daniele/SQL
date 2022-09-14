## Modulo 3 - Funciones Integradas de Fecha

# 1. Función YEAR()
/* Esta función permite obtener el año de un campo de tipo  fecha. 
En el ejemplo a continuación, vemos que se obtiene el  año del campo fecha 
de la tabla facturas y asigna a través  del alias Año este nombre a la columna resultante.*/

SELECT YEAR(fecha) as 'Año' FROM facturas;

# 2. Función MONTH()

# Esta función permite obtener el mes, de un campo de tipo fecha.

SELECT MONTH(fecha) as 'Mes' FROM facturas;

# 3. Función DAY()
# Esta función permite obtener el día de un campo de tipo fecha.

SELECT DAY(fecha) as 'DIA' FROM facturas;

# 4. Función HOUR()
# Esta función permite obtener la hora de un campo de tipo fecha/hora (DATETIME).

SELECT HOUR(fecha) as 'HORA' FROM facturas;

# 5. Función CURDATE()
# Esta función devuelve la fecha actual.  

SELECT CURDATE() as 'FECHA ACTUAL';

# 6. Función CURTIME()
# Esta función devuelve la la hora actual.

SELECT CURTIME() as 'HORA ACTUAL';

# 7. Función DATEDIFF()
# Esta función permite calcular la cantidad de días  transcurridos entre 2 fechas.

SELECT DATEDIFF('2020-06-30','2020-01-01') as 'DIAS TRANSCURRIDOS';
SELECT DATEDIFF(CURTIME(),'2021-06-10') as 'DIAS TRANSCURRIDOS';
SELECT DATEDIFF('2021-06-10',CURTIME()) as 'DIAS TRANSCURRIDOS';

# 8. Función TIMESTAMPDIFF()
# Esta función permite calcular la cantidad de meses o  años transcurridos entre 2 fechas.

SELECT TIMESTAMPDIFF(MONTH, '2020-01-01', '2020-06-30') as 'MESES TRANSCURRIDOS';

SELECT TIMESTAMPDIFF(YEAR, fecha, CURDATE()) as 'AÑOS TRANSCURRIDOS' FROM facturas;

# 9. Función DAYNAME()
# Esta función devuelve el nombre del día de un valor de un  campo de tipo fecha.

SELECT DAYNAME(CURDATE()) as 'Nombre del día';
SELECT DAYNAME('1993-12-28') as 'Nombre del día';

# 10. Función DAYOFWEEK()
# Esta función devuelve el índice o número del día de la  semana de un valor de un campo de tipo fecha.

SELECT DAYOFWEEK(CURDATE()) as 'Número del día de la semana';

# 11. Función DATE_FORMAT()
# Esta funcion sirve para cambiar el formato de fecha

SELECT date_format(fecha, "%d-%m-%Y") as fecha_formateada from facturas;
SELECT date_format(fecha, "%d/%m/%Y") as fecha_formateada from facturas;

# 12. Función DAYOFYEAR()
# Esta función devuelve el índice o número del día del año de un valor de un campo de tipo fecha.

SELECT DAYOFYEAR(CURDATE()) as 'Día del año';

# 13. Función MONTHNAME()
# Esta función devuelve el nombre del mes de un valor de  un campo de tipo fecha.

SELECT MONTHNAME(CURDATE()) as 'Nombre del mes';

# 14. Función ADDDATE()
/* Esta función permite sumarle al valor de un campo de tipo fecha una determinada cantidad  de días, meses o años.
La función utilizada es siempre la misma (ADDDATE); lo que varía es el argumento INTERVAL.*/
 
SELECT CURDATE() 'Fecha actual',
ADDDATE(CURDATE(), INTERVAL 2 MONTH) 'Vencimiento a 2 meses',  
ADDDATE(CURDATE(), INTERVAL 90 DAY) 'Vencimiento a 90 días',  
ADDDATE(CURDATE(), INTERVAL 2 YEAR) 'Vencimiento a 2 años';
