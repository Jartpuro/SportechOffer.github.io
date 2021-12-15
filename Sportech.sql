CREATE DATABASE Sportech;
use Sportech;
CREATE TABLE registro (
id_registro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
edad INT NOT NULL,
celular INT NOT NULL,
correo_electronico VARCHAR (20) NOT NULL,
id_tipo_persona VARCHAR (20) NOT NULL,
id_tipo_identificacion VARCHAR (20) NOT NULL,
identificacion VARCHAR (20) NOT NULL,
id_tipo_genero VARCHAR (20) NOT NULL,
id_oferta VARCHAR (20) NOT NULL,
id_planes VARCHAR (20) NOT NULL,
id_ciudades VARCHAR (20) NOT NULL,
id_habeas_data VARCHAR (20) NOT NULL,
sede VARCHAR (20) NOT NULL);

CREATE TABLE tipo_persona (
id_tipo_persona INT PRIMARY KEY AUTO_INCREMENT,
denominacion_persona VARCHAR (20) NOT NULL);

CREATE TABLE tipo_identificacion (
id_tipo_identificacion INT PRIMARY KEY AUTO_INCREMENT,
tipo_identificacion VARCHAR (20) NOT NULL);

CREATE TABLE tipo_genero (
id_tipo_genero INT PRIMARY KEY AUTO_INCREMENT,
tipo_genero VARCHAR (20) NOT NULL);

CREATE TABLE oferta (
id_oferta INT PRIMARY KEY AUTO_INCREMENT,
denominacion_oferta VARCHAR (20) NOT NULL);

CREATE TABLE ciudades (
id_ciudades INT PRIMARY KEY AUTO_INCREMENT,
nombre_ciudad VARCHAR (20) NOT NULL);

CREATE TABLE habeas_data (
id_habeas_data INT PRIMARY KEY AUTO_INCREMENT,
manifiesto VARCHAR (20) NOT NULL);

CREATE TABLE facturas (
id_facturas INT PRIMARY KEY AUTO_INCREMENT,
comprobante VARCHAR (20) NOT NULL);

CREATE TABLE planes (
id_planes INT PRIMARY KEY AUTO_INCREMENT,
tipo_plan VARCHAR (20) NOT NULL,
tarifa VARCHAR (20) NOT NULL);

CREATE TABLE descuento (
id_descuento INT PRIMARY KEY AUTO_INCREMENT,
margen_descuento VARCHAR (20) NOT NULL);

CREATE TABLE medio_pago (
id_medio_pago INT PRIMARY KEY AUTO_INCREMENT,
tipo_medio_pago VARCHAR (20) NOT NULL);

CREATE TABLE horarios (
id_horarios INT PRIMARY KEY AUTO_INCREMENT,
franjas VARCHAR (20) NOT NULL);

CREATE TABLE sedes (
id_sedes INT PRIMARY KEY AUTO_INCREMENT,
nombre_sede VARCHAR (20) NOT NULL);

CREATE TABLE roles (
id_roles INT PRIMARY KEY AUTO_INCREMENT,
tipo_rol VARCHAR (20) NOT NULL);

CREATE TABLE roles_atributos (
id_roles INT PRIMARY KEY AUTO_INCREMENT,
atributos_rol VARCHAR (20) NOT NULL);

CREATE TABLE compra (
id_compras INT PRIMARY KEY AUTO_INCREMENT,
tipo_plan VARCHAR (20) NOT NULL,
margen_descuento VARCHAR (20) NOT NULL,
tipo_medio_pago VARCHAR (20) NOT NULL,
comprobante VARCHAR (20) NOT NULL);

CREATE TABLE matricula(
id_matriculas INT PRIMARY KEY AUTO_INCREMENT,
nombre_sede VARCHAR (20) NOT NULL,
denominacion_oferta VARCHAR (20) NOT NULL,
franjas VARCHAR (20) NOT NULL,
tipo_rol VARCHAR (20) NOT NULL,
comprobante VARCHAR (20) NOT NULL);

INSERT INTO registro (
id_registro,nombre,apellido,edad,celular,correo_electronico,id_tipo_persona,id_tipo_identificacion,identificacion,id_tipo_genero,id_oferta,id_planes,id_ciudades,id_habeas_data,
sede) 
values 
(1,'JHON','ROJAS',33,3425058241,'NOTENGO@HOTMAIL.COM',1,1,139247834,1,1,1,1,1,1),
(2,'JUAN','BAQUERO',23,3810647708,'NOTENGO1@HOTMAIL.COM',1,1,143743417,1,2,2,1,1,1),
(3,'DIEGO','CASTILLO',34,3814822017,'NOTENGO2@HOTMAIL.COM',1,1,136915711,1,4,2,1,1,1),
(4,'PAULA','FERNANDEZ',34,3112436111,'NOTENGO3@HOTMAIL.COM',1,1,125540117,2,1,3,5,1,1),
(5,'ALEJANDRA','RODRIGUEZ',34,3112436111,'NOTENGO9@HOTMAIL.COM',1,1,125540973,2,1,3,5,1,1),
(6,'MAYRA','VALVUENA',34,3102437771,'NOTENGO4@HOTMAIL.COM',1,1,125940977,2,1,3,5,1,1),
(7,'VALENTINA','LARA',34,3118886111,'NOTENGO5@HOTMAIL.COM',1,1,125541975,2,1,3,5,1,1),
(8,'ERICKA','VEGA',34,3112436999,'NOTENGO6@HOTMAIL.COM',1,1,125540871,2,1,3,5,1,1),
(9,'YAMILE','ABRIL',34,3312436111,'NOTENGO7@HOTMAIL.COM',1,1,125542972,2,1,3,5,1,1),
(10,'ZULLY','PRIETO',34,3212436111,'NOTENGO8@HOTMAIL.COM',1,1,125340905,2,1,3,5,1,1);

INSERT INTO tipo_persona 
( id_tipo_persona, denominacion_persona)
VALUES
(1,'Cliente'),
(2,'Empresa');

INSERT INTO tipo_identificacion (
id_tipo_identificacion,tipo_identificacion)
VALUES
(1,'Cedula de ciudadania'),
(2,'Cedula de extranjeria'),
(3,'Pasaporte'),
(4,'Tarjeta de identidad');

INSERT into tipo_genero (
id_tipo_genero,tipo_genero)
VALUES
(1,'Masculino'),
(2,'Femenino'),
(3,'No indica');

INSERT INTO oferta (
id_oferta,denominacion_oferta)
values
(1,'Atletismo'),
(2,'Badminton'),
(3,'Banloncesto'),
(4,'Balonmano'),
(5,'Beisbol'),
(6,'Biatlon'),
(7,'Boxeo'),
(8,'Breaking'),
(9,'Cliclismo'),
(10,'BMX'),
(11,'Ecuestre'),
(12,'Escalada'),
(13,'Esgrima'),
(14,'Esqui'),
(15,'Futbol'),
(16,'Gimnasia'),
(17,'Golf'),
(18,'Halterofilia'),
(19,'Hockey'),
(20,'Judo'),
(21,'Karate'),
(22,'Lucha'),
(23,'Natacion'),
(24,'Patinaje'),
(25,'Pentatlon'),
(26,'Remo'),
(27,'Rugby'),
(28,'Surf'),
(29,'Taekwondo'),
(30,'Tenis'),
(31,'Tiro'),
(32,'Triatlon'),
(33,'Vela'),
(34,'Voleibol'),
(35,'Waterpolo');

INSERT INTO ciudades (
id_ciudades,nombre_ciudad)
VALUES
(1,'Bogota'),
(2,'Medellin'),
(3,'Cali'),
(4,'Barranquilla'),
(5,'Cartagena'),
(6,'Cucuta'),
(7,'Soledad'),
(8,'Ibague'),
(9,'Bucaramanga'),
(10,'Santa Marta'),
(11,'Villavicencio'),
(12,'Soacha'),
(13,'Pereira'),
(14,'Bello'),
(15,'Valledupar'),
(16,'Monteria'),
(17,'Pasto'),
(18,'Manizales'),
(19,'Buenaventura'),
(20,'Neiva'),
(21,'Barrancabermeja'),
(22,'Palmira'),
(23,'Armenia'),
(24,'Popayan'),
(25,'Sincelejo'),
(26,'Itagui'),
(27,'Floridablanca'),
(28,'Riohacha'),
(29,'Envigado'),
(30,'Tulua'),
(31,'Dosquebradas'),
(32,'San Andres De Tumaco'),
(33,'Tunja'),
(34,'Giron'),
(35,'Apartado'),
(36,'Florencia'),
(37,'Uribia'),
(38,'Ipiales'),
(39,'Turbo'),
(40,'Maicao'),
(41,'Piedecuesta'),
(42,'Yopal'),
(43,'Ocaña'),
(44,'Fusagasuga'),
(45,'Cartago'),
(46,'Facatativa'),
(47,'Chia'),
(48,'Magangue');

INSERT INTO habeas_data (
id_habeas_data,manifiesto)
VALUES
(1,'Si'),
(2,'No');

INSERT INTO planes (
id_planes,tipo_plan,tarifa )
VALUES
(1,'Plan oro',1000000),
(2,'Plan plata',500000),
(3,'Plan bronce',200000);

INSERT INTO descuento(
id_descuento,margen_descuento)
VALUES
(1,'0.5'),
(2,'0.4'),
(3,'0.3'),
(4,'0.25'),
(5,'0.20'),
(6,'0.19'),
(7,'0.15'),
(8,'0.10'),
(9,'0.05'),
(10,'0.03');

INSERT INTO medio_pago(
id_medio_pago,tipo_medio_pago)
VALUES
(1,'EFECTIVO'),
(2,'CREDITO'),
(3,'CUPON'),
(4,'PSE');

INSERT INTO horarios (
id_horarios,franjas)
VALUES
(1,'8AM-10AM'),
(2,'10AM-12PM'),
(3,'12PM-2PM'),
(4,'2PM-4PM'),
(5,'4PM-6PM'),
(6,'6PM-8PM'),
(7,'8PM-10PM'),
(8,'10PM-12PM');

INSERT INTO sedes (
id_sedes,nombre_sede)
VALUES
(1,'VIRTUAL'),
(2,'COMPLEJO A'),
(3,'COMPLEJO B'),
(4,'COMPLEJO C'),
(5,'COMPLEJO PROVEEDOR');

INSERT INTO roles (
id_roles,tipo_rol)
VALUES
(1,'ADMINISTRADOR'),
(2,'USUARIO'),
(3,'ANALISTA'),
(4,'INSTRUCTOR'),
(5,'VENDEDOR');

show tables;

select * from ciudades;
select * from compra;
select * from descuento;
select * from facturas;
select * from habeas_data;
select * from horarios;
select * from matricula;
select * from medio_pago;
select * from oferta;
select * from planes;
select * from registro;
select * from roles;
select * from sedes;
select * from tipo_genero;
select * from tipo_identificacion;
select * from tipo_persona;

select registro.nombre as nombre_usuario,
oferta.denominacion_oferta as deporte 
from oferta
inner join registro on registro.id_registro = oferta.id_oferta;

select registro.apellido as apellido,
ciudades.nombre_ciudad as ciudad_residencia
from ciudades
inner join registro on registro.id_registro = ciudades.id_ciudades;

SELECT DISTINCT nombre FROM registro
WHERE edad IS NOT NULL;

SELECT DISTINCT edad FROM registro
WHERE edad IS NOT NULL;

SELECT nombre, edad FROM registro
WHERE id_ciudades = 1;

select
registro.nombre,
planes.tipo_plan,
oferta.denominacion_oferta
from registro inner join planes on registro.id_planes=planes.id_planes
inner join oferta ON registro.id_oferta=oferta.id_oferta;
 





































