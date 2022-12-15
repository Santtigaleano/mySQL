create database comercio;

use comercio;

create table Clientes(
Id_Cliente int auto_increment,
Nombre Varchar(30) not null,
Apellido Varchar(30) not null,
DNI Int not null,
CUIT Char(13),
Sexo Char(1),
Direccion Varchar(50),
Localidad Varchar(30),
Telefono Varchar(20),
Mail Varchar(50),
Primary Key (Id_Cliente));

describe clientes;

create table Facturas(
Letra Char(1),
Numero Int,
Cantidad Int,
Fecha Date,
Id_cliente Int,
Id_Producto Int,
Primary Key (Letra, Numero));

describe Facturas;

create table Productos(
Id_Producto Int Auto_increment,
Nombre Varchar(30) not null,
Precio Float not null,
Marca Varchar(30),
Color Varchar(20),
Talle Char(5),
Primary Key (Id_Producto));

describe Productos;

insert into Clientes 
(Nombre, Apellido, DNI, CUIT, Sexo, Direccion, Localidad, Telefono, Mail)
Values
('Cristhian', 'Perez', 95152603, '20-95152603-8', 'M', 'Lavalle 648', 'Microcentro', '221-6586527', 'cristhian@gmail.com'),
('Pedro', 'Martinez', 12345678, '21-12345678-9', 'M', 'Corrientes 2500', 'San Telmo', '11-22334455', 'pedro@hotmail.com'),
('Maria', 'Garcia', 87654321, '22-87654321-9', 'F', 'Bulnes 5500', 'Abasto', '11-99887766', 'maria@yahoo.com'),
('Laura', 'Gil', 11223344, '21-11223344-8', 'F', 'Chile 456', 'Microcentro', '11-88776655', 'Laura@hotmail.com'),
('Derek', 'Jeeter', 22334455, '20-22334455-9', 'M', 'Alem 5500', 'Puerto Madero', '11-55667788', 'Derek@gmail.com'),
('Bob', 'Abreu', 55667788, '21-55667788-9', 'M', 'Venezuela 678', 'Microcentro', '1177665544', 'bob@yahoo.com.ar'),
('Sara', 'James', 22446688, '22-22446688-9', 'F', 'Garay 897', 'Parque Patricios', '11-69696969', 'saraxx@gmail.com'),
('Gemma', 'Teller', 88664422, '20-88664422-8', 'F', 'Charming 5600', 'Redwood', '11-55667788', 'samcro@hotmail.com'),
('Clay', 'Morrow', 11335577, '21-11335577-9', 'M', 'Charming 5600', 'Redwood', '11-55667788', 'clay@gmail.com'),
('Opie', 'Marck', 33557799, '22-33557799-9', 'M', 'Balvanera 6500', 'Constitucion', '11-88664422', 'opie@yahoo.es'),
('Paula', 'Perez', 94123456, '20-94123456-8', 'F', '54 1351', 'La Plata', '221-3586527', 'paula@hotmail.com'),
('Jonathan', 'Perez', 95123456, '20-95123456-8', 'M', 'Paseo Colon 354', 'Puerto Madero', '11-11447799', 'jotajota@gmail.com'),
('Loli', 'Toca', 96123456, '20-96123456-8', 'F', 'Castillejo 999', 'Guatire', '11-98765432', 'loli@yahoo.es'),
('Leon', 'Magallanes', 97123456, '20-96123456-8', 'M', 'Garay 123', 'Parque Patricios', '11-99999999', 'leonm@hotmail.com'),
('Clarita', 'Perez', 98123456, '20-98123456-9', 'F', '54 1351 1', 'La Plata', '221-1231234', 'clarita@yahoo.com.ar'),
('Alfonso', 'Carrasquel', 20891233, '21-20891233-1', 'M', 'Caracas 1920', 'Belgrano', '11-60958365', 'alfonso@hotmail.com' ),
('Luis', 'Aparicio', 49663942, '20-49663942-2', 'M', 'Maracaibo 1934', 'Palermo', '11-35140667', 'luis@gmail.com'),
('David', 'Concepcion', 80440165, '22-80440165-2', 'M', 'Ocumare 1948', 'Palermo', '11-68091856', 'david@yahoo.es'),
('Wilson', 'Alvarez', 5755812, '20-5755812-3', 'M', 'Maracaibo 1970', 'Palermo', '11-66018959', 'wilson@hotmail.com'),
('Luis', 'Sojo', 33905795, '10-33905795-1', 'M', 'Caracas 1965', 'Belgrano', null, 'luiss@gmail.com');

select * from Clientes;

insert into Facturas values
('A', 101, 2, '2017-01-01', 1, 2),
('A', 102, 4, '2017-01-01', 3, 4),
('A', 103, 3, '2017-01-02', 5, 1),
('A', 104, 1, '2017-01-02', 6, 3),
('A', 105, 5, '2017-01-02', 7, 3),
('A', 106, 6, '2017-01-06', 9, 3),
('A', 107, 5, '2017-01-07', 14, 16),
('A', 108, 2, '2017-01-07', 16, 23),
('B', 101, 4, '2017-01-01', 8, 12),
('B', 102, 2, '2017-01-01', 10, 11),
('B', 103, 3, '2017-01-01', 3, 11),
('B', 104, 5, '2017-01-03', 13, 5),
('B', 105, 2, '2017-01-04', 14, 2),
('B', 106, 3, '2017-01-06', 3, 9),
('B', 107, 2, '2017-01-07', 15, 16),
('B', 108, 1, '2017-01-07', 6, 17),
('C', 101, 2, '2017-01-04', 15, 1),
('C', 102, 4, '2017-01-04', 10, 4),
('C', 103, 3, '2017-01-05', 12, 6),
('C', 104, 4, '2017-01-06', 9, 8),
('C', 105, 3, '2017-01-06', 4, 9),
('C', 106, 1, '2017-01-06', 8, 2),
('C', 107, 5, '2017-01-08', 18, 20),
('C', 108, 4, '2017-01-10', 1, 6);

select * from Facturas;

insert into Productos (Nombre, Precio, Marca, Color, Talle)
Values
('Remera A', 120.0, 'Levis', 'Azul', 'M'),
('Remera A', 125.0, 'Levis', 'Azul', 'L'),
('Remera A', 120.0, 'Levis', 'Verde', 'M'),
('Remera A', 150.0, 'Levis', 'Verde', 'L'),
('Remera B', 150.0, 'Levis', 'Blanco', 'L'),
('Pantalon 501', 350.0, 'Nautica', 'Negro', 'S'),
('Pantalon 550', 370.0, 'Nautica', 'Blanco', 'S'),
('Pantalon 550', 370.0, 'Nautica', 'Blanco', 'M'),
('Pantalon 550', 370.0, 'Nautica', 'Blanco', 'L'),
('Pantalon 550', 350.0, 'Nautica', 'Azul', 'S'),
('Pantalon 550', 360.0, 'Nautica', 'Azul', 'M'),
('Pantalon 550', 360.0, 'Nautica', 'Azul', 'XL'),
('Pantalon Modal', 275.0, 'Acuarela', 'Azul', 'L'),
('Pantalon Modal', 280.0, 'Acuarela', 'Azul', 'XL'),
('Pantalon Modal', 270.0, 'Acuarela', 'Azul', 'S'),
('Pantalon Modal', 285.0, 'Acuarela', 'Blanco', 'L'),
('Pantalon Modal', 285.0, 'Acuarela', 'Blanco', 'M'),
('Pantalon Modal', 250.0, 'Acuarela', 'Blanco', 'S'),
('Camisa Polo X', 400.0, 'Polo Ralph', 'Blanco', 'L'),
('Camisa Polo X', 400.0, 'Polo Ralph', 'Azul', 'L'),
('Camisa Polo X', 440.0, 'Polo Raplh', 'Rosa', 'M'),
('Chomba lisa', 200.0, 'Tommy', 'Verde', 'S'),
('Chomba lisa', 220.0, 'Tommy', 'Blanco', 'M'),
('Chomba lisa', 230.0, 'Tommy', 'Azul', 'L'),
('Jean Clasico', 450.0, 'Wrangler', 'Azul', 'XL'),
('Jean Clasico', 450.0, 'Wrangler', 'Azul', 'L'),
('Jean Clasico', 450.0, 'Wrangler', 'Azul', 'M'),
('Jean Clasico', 480.0, 'Wrangler', 'Azul', 'S');

select * from Productos;

