--- 28-08-2025 14:56:24 SQLite
CREATE table tabelafuncionarios(
  id_funcioanario INT PRIMARY KEY,
  Nome VARCHAR(100),
  Departamento VARCHAR(100),
  Salario FLOAT) 

  


--- 28-08-2025 15:03:29 SQLite.1
 INSERT INTO tabelafuncionarios(
  id_funcioanario,
  Nome,
  Departamento,
  Salario) 
  VALUES
('1','Heitor Vieira', 'Financeiro', 4959.22),
('2','Daniel Campos', 'Vendas',3884.44),
('3','Luiza Dias','TI',8205.78),
('4','Davi Lucas Moraes','Financeiro', 8437.02),
('5','Pietro Cavalcanti', 'TI',4946.88),
('6','Evelyn da Mata', 'Vendas',5278.88),
('7','Isabella Rocha', 'Marketing',4006.03),
('8','Sra. Manuela Azevedo', 'Vendas', 6101.88),
('9','Brenda Cardoso', 'TI', 8853.34),
('10','Danilo Souza', 'TI', 8242.14);


--- 28-08-2025 15:03:53 SQLite.1
SELECT * FROM tabelafuncionarios


--- 28-08-2025 15:05:01 SQLite.2
SELECT * FROM tabelafuncionarios
where departamento = 'Vendas'


--- 28-08-2025 15:05:23 SQLite.2
SELECT * FROM tabelafuncionarios


--- 28-08-2025 15:05:38 SQLite.2
SELECT * FROM tabelafuncionarios
where departamento = 'Vendas'


--- 28-08-2025 15:06:44 SQLite.3
SELECT * FROM tabelafuncionarios
where salario > 5000


--- 28-08-2025 15:08:38 SQLite.4
SELECT DISTINCT departamento
FROM tabelafuncionarios


--- 28-08-2025 15:11:10 SQLite.5
UPDATE tabelafuncionarios set salario = 7500
where departamento = 'TI';



--- 28-08-2025 15:11:29 SQLite.5
UPDATE tabelafuncionarios set salario = 7500
where departamento = 'TI';

SELECT * from tabelafuncionarios


--- 28-08-2025 15:12:38 SQLite.6
DELETE from tabelafuncionarios
where salario < 4000;


--- 28-08-2025 15:14:00 SQLite.7
SELECT * from tabelafuncionarios
WHERE departamento = 'Vendas' and salario > 6000;


--- 28-08-2025 15:14:14 SQLite.7
SELECT * from tabelafuncionarios


--- 28-08-2025 15:14:23 SQLite.7
SELECT * from tabelafuncionarios
WHERE departamento = 'Vendas' and salario > 6000;


--- 28-08-2025 15:20:58 SQLite.9
CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES tabelafuncionarios(id)
);


--- 28-08-2025 15:23:47 SQLite.10
INSERT INTO projetos (id_projeto, nome_projeto, id_gerente) 
VALUES 
(1, 'Livro', 2),
(2, 'Música', 4),
(3, 'Jardim', 6),
(4, 'casa', 2);


--- 28-08-2025 15:24:08 SQLite.10
SELECT * FROM projetos


--- 28-08-2025 15:25:10 SQLite.10
SELECT * from projetos
WHERE id_gerente = 2;


