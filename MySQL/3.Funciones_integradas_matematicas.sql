# Modulo 3 - Funciones Integradas de Matematicas

# 1. Función ROUND()
/* Esta función permite redondear valores  numéricos. El ejemplo a la derecha, 
divide los  valores numéricos cargados en el campo precio  de la tabla articulos por 3 
y redondea el  resultado de dicha división a 2 decimales.
El segundo argumento debe ser siempre un  número entero que indique la cantidad de  decimales a obtener.
Si el segundo argumento es 0, el resultado a obtener  será un número entero.*/

SELECT ROUND(PrecioUnidad/3, 2) AS REDONDEO FROM productos_neptuno;

# 2. Función CEIL()
# Esta función devuelve el valor entero mayor al argumento especiﬁcado.

SELECT PrecioUnidad, PrecioUnidad * 1.27 'Precio con aumento',
CEIL(PrecioUnidad * 1.27) 'Precio redondeado'  FROM productos_neptuno;

# 3. Función FLOOR()
# Esta función devuelve el valor entero menor al argumento especiﬁcado.

SELECT PrecioUnidad, PrecioUnidad * 1.27 'Precio con aumento',
FLOOR(PrecioUnidad * 1.27) 'Precio redondeado'  FROM productos_neptuno;

#  4. Función MOD()
/* Esta función permite obtener el resto de la división de 2 valores numéricos.
 En el ejemplo anterior, se calcula el resto de la división  entre 15 y 4.*/

SELECT MOD(15, 4);

# 5. Función POW()
/* Esta función permite elevar a una potencia un valor  numérico.
En el ejemplo anterior, devuelve el resultado de elevar  a la octava potencia el número 2.*/

SELECT POW(2, 8);

