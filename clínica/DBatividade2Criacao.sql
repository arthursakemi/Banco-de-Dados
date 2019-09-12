CREATE DATABASE clinica;

USE clinica;

CREATE TABLE ambulatorios
(nroa INT,
andar NUMERIC(3) NOT NULL,
capacidade SMALLINT,
PRIMARY KEY (nroa));

CREATE TABLE pacientes
(codp INT,
nome VARCHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
cidade CHAR(30),
cpf NUMERIC(11) UNIQUE,
doenca VARCHAR(40) NOT NULL,
PRIMARY KEY(codp));

CREATE TABLE funcionarios
(codf INT,
nome VARCHAR(40) NOT NULL,
idade SMALLINT,
cpf NUMERIC(11) UNIQUE,
cidade VARCHAR(30),
salario NUMERIC(10),
cargo VARCHAR(20),
PRIMARY KEY(codf));

CREATE TABLE medicos
(codm INT,
nome VARCHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
especialidade CHAR(20),
cpf NUMERIC(11) UNIQUE,
cidade VARCHAR(30),
nroa INT,
PRIMARY KEY(codm),
FOREIGN KEY(nroa) REFERENCES ambulatorios (nroa) ON DELETE CASCADE);

CREATE TABLE consultas
(codm INT,
codp INT,
dia DATE,
hora TIME,
PRIMARY KEY (codm,dia,hora),
FOREIGN KEY(codm) REFERENCES medicos (codm) ON DELETE CASCADE,
FOREIGN KEY(codp) REFERENCES pacientes (codp) ON DELETE CASCADE);

ALTER TABLE funcionarios
ADD nroa INT;

ALTER TABLE funcionarios
DROP cargo,
DROP nroa;