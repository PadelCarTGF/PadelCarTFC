CREATE DATABASE padelcardb;

USE padelcardb;

CREATE TABLE cliente (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre varchar(50) NOT NULL,
  apellido1 varchar(50) NOT NULL,
  apellido2 varchar(50),
  fecha_nacimiento DATE NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE pista (
  id INTEGER  NOT NULL,
  nombre varchar(20) NOT NULL PRIMARY KEY UNIQUE,
  ocupada bool NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE reserva (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  cliente_id INTEGER NOT NULL,
  nombre_pista varchar(20) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  num_jugadores INTEGER NOT NULL,
  CONSTRAINT fk_reserva_cliente FOREIGN KEY(cliente_id) REFERENCES cliente(id),
  CONSTRAINT fk_reserva_pista FOREIGN KEY(nombre_pista) REFERENCES pista(nombre)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*
INSERT INTO `padelcardb`.`pista` (`id`, `nombre`, `ocupada`) VALUES ('01', 'Aqua', '1'), ('02', 'Limbo', '1'),('03', 'Buba', '1'),('04', 'Master', '1');
*/