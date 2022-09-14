use comercioIT;
# Crear una Tabla
create table productos(
idProducto int(11) unsigned not null auto_increment primary key,
Nombre varchar(50) not null,
Precio double,
Marca varchar(30) not null,
Categotia varchar(30) not null,
stock int(6) not null,
Disponible boolean default false
);