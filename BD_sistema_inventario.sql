create table EMPLEADO (
ID_EMPLEADO int primary key, 
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

create table CLIENTE (
ID_cliente int primary key, 
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

create table COTIZACION (
ID_cotizacion int primary key,
ID_cliente_fk int,
ID_empleado_fk int,
Fecha_de_venta date not null, 
tipo_de_contrato varchar(20) not null,
constraint fk_empleado_cotizacion foreign key (ID_empleado_fk) references EMPLEADO(ID_EMPLEADO),
constraint fk_cliente_cotizacion foreign key (ID_cliente_fk) references CLIENTE(ID_cliente)
);

create table PRODUCTO (
ID_producto int primary key,
Nombre varchar(20) not null, 
Peso varchar(10) not null, 
Costo int not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

create table BODEGA (
ID_bodega int primary key,
Direccion varchar(20) not null, 
Comuna varchar(10) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

create table DETALLE_COTIZACION (
ID_DETALLE_COTIZACION int primary key,
ID_producto_fk int,
constraint fk_detalleCotizacion_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
)

create table STOCK (
ID_STOCK int primary key,
ID_bodega_fk int,
ID_producto_fk int,
Cantidad_productos int not null,
Reordenamiento int,
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date,
constraint fk_stock_bodega foreign key (ID_bodega_fk) references BODEGA(ID_bodega), /*Sintaxis para FK en una tabla*/
constraint fk_stock_producto foreign key (ID_producto_fk) references PRODUCTO(ID_producto)
)

alter table bodega add region varchar(20); /*Agrega columna a la tabla*/
alter table cliente add column edad int; /*Agrega columna edad a la tabla*/
alter table cliente drop column edad ; /*Elimina columna edad de la tabla*/

/*Truncate : Elimina todo el contenido de una tabla, pero no la tabla en si*/

create table PRUEBA (
ID_prueba int primary key, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);

--Elimina una tabla existente
drop table PRUEBA; 

--Crea una tabla identica a otra
create table cliente_backup (like cliente including all); 

select*from cliente_backup;

--Inserta datos a una tabla existente
insert into cliente_backup (id_cliente, nombre, telefono, correo, fecha_de_creacion, fecha_de_actualizacion, apellido)
values ('123', 'Mike', '123456', 'kancer@gmail.com', '2023-01-15', '2023-01-15', 'Brevis');

insert into cliente_backup (id_cliente, nombre, telefono, correo, fecha_de_creacion, fecha_de_actualizacion, apellido)
values ('789', 'Bianca', '56489998', 'bianca@gmail.com', default, '2023-01-15', 'Figueroa');

--TRUNCATE // Especificamente para las tables

truncate table cliente_backup















