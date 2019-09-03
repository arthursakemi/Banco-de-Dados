USE clinica;

UPDATE pacientes
SET cidade = 'Ilhota'
WHERE nome = 'Paulo';

UPDATE consultas
SET dia = '2006/07/04',
hora = '12:00'
WHERE codm = 1 and codp = 4;

UPDATE pacientes
SET doenca = 'cancer'
WHERE nome = 'Ana';

UPDATE consultas
SET hora = ADDTIME(hora,'01:30')
WHERE codm = 3 AND codp = 4;

DELETE FROM funcionarios
WHERE codf = 4;

DELETE FROM consultas
WHERE hora > '19:00';

DELETE FROM pacientes
WHERE doenca = 'cancer' OR idade <10;

DELETE FROM medicos
WHERE cidade = 'biguacu' OR cidade = 'palhoca';
