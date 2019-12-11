create database if not exists fctpilot;
use fctpilot;
drop table if exists requisito;
drop table if exists puesto;
drop table if exists imagenes;
drop table if exists empresa;
drop table if exists opinion;
drop table if exists valoracion;
drop table if exists usuarios;
/* -- Para el recuperar contraseña
create table usuarios
(
	id varchar(35) primary key,
	nombre varchar(100),
	apellidos varchar(120),
	pass mediumblob,
	salt mediumblob,
	cuentaactiva tinyint(1),
	rol varchar(8),
	fechanacimiento date,
	correoelectronico varchar(200)
);*/
create table usuarios
(
	id varchar(35) primary key, 
	nombre varchar(100), 
	apellidos varchar(120), 
	pass varchar(200), 
	cuentaActiva tinyint(1), 
	rol varchar(10), 
	fechanacimiento date,
	correoelectronico varchar(200),
	constraint ck_rol check (rol in ('Gestor','Profesor','Alumno'))
);

create table empresa
(
	id integer primary key auto_increment,
	nombre varchar(50),
	representante varchar (200),
	sector varchar (30),
	resumen varchar(255),
	ubicacion varchar(255),
	imagenprincipal integer,
	aprobada tinyint(1),
);

create table valoracion
(
	usuario varchar(35) references usuarios (id),
	empresa integer references empresas (id),
	valoracion integer,
	primary key (usuario,empresa)
);

create table opinion
(
	usuario varchar(35) references usuarios (id),
	empresa integer references empresa (id), 
	comentario varchar (255), 
	certificado tinyint(1), 
	opinionProfesor varchar(128), 
	constraint pk_opinion  primary key (usuario, empresa)
);

create table imagenes
(
	indice integer primary key auto_increment,
	empresa integer not null,
	rutaimagen varchar(255),
	constraint fk_ima_emp foreign key (empresa) references empresa (id)
);

alter table empresa
add constraint fk_emp_ima
foreign key (imagenprincipal)
references imagenes (indice);

create table puesto
(
	empresa integer,
	id integer,
	nombre varchar(30),
	descripcion varchar(255),
	constraint pk_puesto primary key (empresa,id),
	constraint fk_pue_emp foreign key (empresa) references empresa (id)
);


create table requisito
(
	empresa integer not null references empresa (numEmpresa),
	puesto integer references puesto (id),
	id integer,
	descripcion varchar(255),
	constraint pk_requisito primary key (empresa, puesto, id)
);

commit;

DELIMITER /
create trigger noCrearDuplicado
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
create trigger noActualizarDuplicado
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




create view empresas as select * from empresa;

create view notamedia as select avg(v.valoracion) nota,e.id, e.nombre from valoracion v, empresa e where e.id=v.empresa group by v.empresa order by nota desc; 
create view notaestudiante as select avg(v.valoracion) nota,e.id, e.nombre from valoracion v, empresa e, usuarios u where e.id=v.empresa and u.id=v.usuario and rol='Estudiante' group by v.empresa order by nota desc;
create view notaprofesor as select avg(v.valoracion) nota,e.id, e.nombre from valoracion v, empresa e, usuarios u where e.id=v.empresa and u.id=v.usuario and rol='Profesor' group by v.empresa order by nota desc;
create view notagestor as select avg(v.valoracion) nota,e.id, e.nombre from valoracion v, empresa e, usuarios u where e.id=v.empresa and u.id=v.usuario and rol='Gestor' group by v.empresa order by nota desc;