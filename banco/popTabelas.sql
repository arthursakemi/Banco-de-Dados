USE banco;

INSERT INTO banco (nome)
VALUES ('Bradesco'),
('Itau'),
('Santander');

INSERT INTO agencia (cod_banco,endereco)
VALUES (1, 'Endereco 1'),
(2, 'Endereço 2'),
(2, 'Endereço 3'),
(3, 'Endereço 4'),
(1, 'Endereço 5');

INSERT INTO conta (cod_ag, saldo, tipo)
VALUES (1, 10000, 'CP'),
(2, 2000, 'CC'),
(2, 5000, 'CP'),
(4, -500, 'CC'),
(5, 300, 'CC');

INSERT INTO cliente (nome, sexo, cpf, endereco, telefone)
VALUES ('Jorge Jorgino', 'M', 15935748645, 'Endereço 6', '55849764'),
('Roger Regerio', 'M', 45287569825, 'Endereço 7', '54863152'),
('Pedro Pedroso', 'M', 24856975842, 'Endereço 8', '48526479'),
('Camila Camilo', 'F', 48569713548, 'Endereço 9', '59812546'),
('Carolina Caroles', 'F', 47896254826, 'Endereço 10', '48521346');

INSERT INTO conta_cliente (criacao, cod_cli, cod_conta)
VALUES ('2008/01/25', 1, 1),
('2008/07/16', 2, 3),
('1987/02/28', 3, 2),
('1995/01/30', 4 , 4),
('1989/03/13', 5 , 5);