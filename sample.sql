insert into empresa values (null,'Empresa 1','Nombre 1','Representante 1','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 2','Nombre 2','Representante 2','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 3','Nombre 3','Representante 3','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 4','Nombre 4','Representante 4','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 5','Nombre 5','Representante 5','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 6','Nombre 6','Representante 6','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 7','Nombre 7','Representante 7','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 8','Nombre 8','Representante 8','Informatica','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 1','Nombre 1','Representante 1','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 2','Nombre 2','Representante 2','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 3','Nombre 3','Representante 3','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 4','Nombre 4','Representante 4','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 5','Nombre 5','Representante 5','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 6','Nombre 6','Representante 6','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 7','Nombre 7','Representante 7','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 8','Nombre 8','Representante 8','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 2','Nombre 2','Representante 2','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 3','Nombre 3','Representante 3','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 4','Nombre 4','Representante 4','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 5','Nombre 5','Representante 5','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 6','Nombre 6','Representante 6','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 7','Nombre 7','Representante 7','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);
insert into empresa values (null,'Empresa 8','Nombre 8','Representante 8','Diseño','Blablablablabal\nblablabla<br>asdasda','17/37.39941/-6.03549',null);

insert into imagenes values (null,1,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,2,'edificio - empresa2.jpg');
insert into imagenes values (null,3,'56b6504105c5a.jpg');
insert into imagenes values (null,4,'166474.png');
insert into imagenes values (null,5,'439240.jpeg');
insert into imagenes values (null,6,'1696130.jpg');
insert into imagenes values (null,7,'21130159_ml.jpg');
insert into imagenes values (null,8,'93938348.jpg	');
insert into imagenes values (null,9,'deloitte_edificio_620x350.jpg');
insert into imagenes values (null,10,'1414507335_175641_1414507465_noticia_normal.jpg');
insert into imagenes values (null,11,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,12,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,13,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,14,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,15,'1 - oeZC2K17cGJ4IZIRtAM45w.png');
insert into imagenes values (null,16,'1 - oeZC2K17cGJ4IZIRtAM45w.png');


create or replace table imagenes (
	indice integer primary key auto_increment,
	empresa integer not null references empresa (numEmpresa),
	rutaImagen varchar(255)
);

create or replace table puesto (
	empresa integer not null references empresa (numEmpresa),
	id integer primary key,
	nombre varchar(10),
	descripcion varchar(255)
);

create or replace table requisito (
	empresa integer not null references empresa (numEmpresa),
	puesto integer references puesto (id),
	id integer,
	descripcion varchar(255),
	constraint pk_requisito primary key (empresa, puesto, id)
);