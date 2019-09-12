CREATE DATABASE banco;

USE banco;

CREATE TABLE banco(
	cod_banco SMALLINT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR(40) NOT NULL,
    PRIMARY KEY (cod_banco)
);

CREATE TABLE agencia(
	cod_ag SMALLINT NOT NULL AUTO_INCREMENT,
    cod_banco SMALLINT NOT NULL,
    endereco VARCHAR(70),
    PRIMARY KEY (cod_ag),
    FOREIGN KEY (cod_banco) REFERENCES banco(cod_banco) ON UPDATE CASCADE
);

CREATE TABLE conta(
	cod_conta INT NOT NULL AUTO_INCREMENT,
    cod_ag SMALLINT NOT NULL,
    saldo DOUBLE NOT NULL,
    tipo VARCHAR(2),
    PRIMARY KEY (cod_conta),
    FOREIGN KEY (cod_ag) REFERENCES agencia(cod_ag) ON UPDATE CASCADE
);

CREATE TABLE cliente(
	cod_cli INT NOT NULL AUTO_INCREMENT,
    cpf BIGINT(11) UNIQUE NOT NULL,
    nome VARCHAR(30) NOT NULL,
    sexo ENUM('M','F'),
    endereco VARCHAR(70) NOT NULL,
    telefone VARCHAR(8) NOT NULL,
    celular VARCHAR(9),
    tel_comercial VARCHAR(9),
    PRIMARY KEY (cod_cli)
);

CREATE TABLE conta_cliente(
	criacao DATE NOT NULL,
    cod_conta INT NOT NULL,
    cod_cli INT NOT NULL,
    FOREIGN KEY (cod_conta) REFERENCES conta(cod_conta) ON UPDATE CASCADE,
    FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cli) ON UPDATE CASCADE
);