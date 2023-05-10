CREATE DATABASE IF NOT EXISTS devbook;
USE devbook;

DROP TABLE IF EXISTS publicacoes;
DROP TABLE IF EXISTS seguidores;
DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
  id int auto_increment primary key,
  nome varchar(50) not null,
  nick varchar(50) not null unique,
  email varchar(50) not null unique,
  senha varchar(200) not null,
  criadoEm timestamp default current_timestamp
) ENGINE=INNODB;

CREATE TABLE seguidores (
  usuario_id INT NOT NULL,
  seguidor_id INT NOT NULL,
  PRIMARY KEY (usuario_id, seguidor_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
  FOREIGN KEY (seguidor_id) REFERENCES usuarios(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE publicacoes(
  id int auto_increment primary key,
  titulo varchar(50) not null,
  conteudo varchar(300) not null,
  autor_id int not null, FOREIGN KEY (autor_id) REFERENCES usuarios(id) ON DELETE CASCADE,
  curtidas int default 0,
  criadaEm timestamp default current_timestamp
) ENGINE=InnoDB;