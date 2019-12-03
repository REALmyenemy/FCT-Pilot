create database if not exists fctpilot;
use fctpilot;
drop table if exists requisito;
drop table if exists puesto;
drop table if exists imagenes;
drop table if exists empresa;
drop table if exists opinion;
drop table if exists valoracion;
drop table if exists usuarios;
/*
create table usuarios (
	id varchar(35) primary key,
	nombre varchar(100),
	apellidos varchar(120),
	pass mediumblob,
	salt mediumblob,
	cuentaactiva tinyint(1),
	rol varchar(8),
	fechanacimiento date
);*/
create or replace table usuarios
(
	id varchar(35) primary key, 
	nombre varchar(100), 
	apellidos varchar(120), 
	pass varchar(200), 
	cuentaActiva boolean, 
	rol varchar(8), 
	fechanacimiento date, 
	constraint ck_rol check 
	(rol in ('Gestor','Profesor','Alumno'))
);
´/*
create table empresa (
	id integer primary key auto_increment,
	nombre varchar(50),
	representante varchar(200),
	sector varchar(30),
	resumen varchar(255),
	ubicacion varchar(255),
	imagenprincipal integer,
	aprobada tinyint(1),
	constraint fk_emp_ima foreign key (imageprincipal) references imagenes
);.*/

create or replace table empresa (id integer primary key auto_increment,
 nombre varchar(50),
 representante varchar (200),
 sector varchar (30),
 resumen varchar(255),
 ubicacion varchar(255),
 imagenPrincipal integer
);

create table valoracion (
	usuario varchar(35),
	empresa integer,
	valoracion integer,
	primary key (usuario,empresa)
);

create table opinion (
	usuario varchar(35),
	empresa integer,
	comentario varchar(255),
	certificado tinyint(1),
	opinionprofesor varchar(128),
	constraint pk_opinion primary key (usuario,empresa),
	constraint fk_opi_usu foreign key (usuario) references usuarios,
	constraint fk_opi_emp foreign key (empresa) references empresa
);

create table imagenes (
	indice integer primary key auto_increment,
	empresa integer not null,
	rutaimagen varchar(255)
	constraint fk_ima_emp foreign key (empresa) references empresa
);

create table puesto (
	empresa integer ,
	id integer,
	nombre varchar(10),
	descripcion varchar(255),
	constraint pk_puesto primary key (empresa,id),
	constraint fk_pue_emp foreign key (empresa) references empresa
);

create table requisito (
	empresa integer,
	puesto integer,
	id integer not null,
	descripcion varchar(255),
	constraint pk_requisito primary key (empresa,puesto,id),
	constraint fk_requisito foreign key (empresa,puesto) references puesto
);


commit;



 
create or replace table valoracion (usuario varchar(35) references usuarios (id), empresa integer references empresa (numEmpresa), valoracion integer, constraint pk_valoracion primary key (usuario, empresa));
create or replace table opinion (usuario varchar(35) references usuarios (id), empresa integer references empresa (id), comentario varchar (255), certificado boolean, opinionProfesor varchar(128), constraint pk_opinion  primary key (usuario, empresa));

create or replace table imagenes (indice integer primary key auto_increment,empresa integer not null references empresa (numEmpresa), rutaImagen varchar(255));
create or replace table puesto (empresa integer not null references empresa (numEmpresa), id integer primary key, nombre varchar(10), descripcion varchar(255));

create or replace table requisito (empresa integer not null references empresa (numEmpresa), puesto integer references puesto (id), id integer, descripcion varchar(255), constraint pk_requisito primary key (empresa, puesto, id));


DELIMITER /
create or replace trigger noCrearDuplicado
before insert on usuarios
for each row
begin
declare
	usuYaExistente varchar(35);
begin
	select id into usuYaExistente from usuarios where apellidos = new.apellidos and rol = new.rol and nombre = new.nombre;
	if (usuYaExistente is not null) then
		signal sqlstate '22000';
	end if;
end; /*Hemos abierto un begin de más, hay que cerrarlo*/
end;
/

DELIMITER ;


DELIMITER /
create or replace trigger noActualizarDuplicado
before update on usuarios
for each row
begin 
declare
	usuYaExistente varchar(35);
begin
	select id into usuYaExistente from usuarios where apellidos = new.apellidos and rol = new.rol and nombre = new.nombre;
	if (usuYaExistente is not null) then
		signal sqlstate '22000';
	end if;
end; /*Hemos abierto un begin de más, hay que cerrarlo*/
end;
/

DELIMITER ;



create view valoracionAlumno select avg(valoracion) where usuario in (select distinct id from usuarios where rol='Alumno') group by numEmpresa;
create view valoracionProfesor select avg(valoracion) where usuario in (select distinct id from usuarios where rol='Profesor') group by numEmpresa;
create view valoracionGestor select avg(valoracion) where usuario in (select distinct id from usuarios where rol='Gestor') group by numEmpresa;
