CREATE TABLE usuarios (
	id varchar(35) primary key,
	nombre varchar(100),
	apellidos varchar(120),
	pass varchar(200),
	cuentaActiva tinyint(1),
	rol varchar(8),
	fechanacimiento date
);

CREATE TABLE empresa (
	id int(11) primary key AUTO_INCREMENT,
	nombre varchar(50),
	representante varchar(200),
	sector varchar(30),
	resumen varchar(255),
	ubicacion varchar(255),
	imagenPrincipal int(11),
	constraint fk_emp_ima foreign key (imageprincipal) references imagenes
);

CREATE TABLE imagenes (
	indice int(11) primary key AUTO_INCREMENT,
	empresa int(11) NOT NULL,
	rutaImagen varchar(255)
	constraint fk_ima_emp foreign key (empresa) references empresa
);


CREATE TABLE opinion (
	usuario varchar(35),
	empresa int(11),
	comentario varchar(255),
	certificado tinyint(1),
	opinionProfesor varchar(128),
	constraint pk_opinion PRIMARY KEY (usuario,empresa),
	constraint fk_opi_usu foreign key (usuario) references usuarios,
	constraint fk_opi_emp foreign key (empresa) references empresa
);

CREATE TABLE puesto (
	empresa int(11) ,
	id int(11),
	nombre varchar(10),
	descripcion varchar(255),
	constraint pk_puesto primary key (empresa,id),
	constraint fk_pue_emp foreign key (empresa) references empresa
);

CREATE TABLE requisito (
	empresa int(11),
	puesto int(11),
	id int(11) NOT NULL auto_increment,
	descripcion varchar(255),
	constraint pk_requisito PRIMARY KEY (empresa,puesto,id),
	constraint fk_requisito foreign key (empresa,puesto) references puesto
);

CREATE TABLE valoracion (
	usuario varchar(35),
	empresa int(11),
	valoracion int(11),
	PRIMARY KEY (usuario,empresa)
);

COMMIT;