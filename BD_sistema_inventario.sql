create table EMPLEADO (
ID_EMPLEADO int primary key, 
Nombre varchar(20) not null, 
Telefono varchar(10) not null, 
Correo varchar(50) not null, 
Fecha_de_creacion date not null default current_date, 
Fecha_de_actualizacion date
);



