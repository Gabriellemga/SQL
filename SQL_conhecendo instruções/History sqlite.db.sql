--- 29-08-2025 11:32:17 sqlite.db
SELECT * FROM Notas


--- 29-08-2025 11:34:15 sqlite.db
SELECT * FROM Disciplinas


--- 29-08-2025 11:35:54 sqlite.db
SELECT AVG(nota)
FROM Notas
WHERE id_disciplina = 2;


--- 29-08-2025 11:37:32 sqlite.db
SELECT * FROM Alunos
WHERE nome_aluno = 'A%';


--- 29-08-2025 11:38:14 sqlite.db
SELECT * FROM Alunos
WHERE nome_aluno like 'A%';


--- 29-08-2025 11:39:57 sqlite.db
SELECT * FROM Alunos
WHERE data_nascimento LIKE '%02%';


--- 29-08-2025 11:40:53 sqlite.db
SELECT * FROM Alunos
WHERE data_nascimento LIKE '%-02-%';


--- 29-08-2025 11:44:08 sqlite.db
SELECT nome_aluno, JULIANDAY('now') - JULIANDAY(data_nascimento) AS idade
FROM Alunos;


--- 29-08-2025 11:45:38 sqlite.db
 SELECT nome_aluno,
      data_nascimento,
      (strftime('%Y', CURRENT_DATE) - strftime('%Y', data_nascimento)) - 
      (strftime('%m-%d', CURRENT_DATE) < strftime('%m-%d', data_nascimento)) AS idade
FROM Alunos;


--- 29-08-2025 11:46:55 sqlite.db
SELECT 
ID_Aluno As aluno, 
nota,
CASE WHEN nota >= 6 THEN 'APROVADO' 
ELSE 'REPROVADO' END 
AS Resultado
FROM Notas;


--- 29-08-2025 10:41:43 Banco+de+dados+Fokus.db.9
SELECT id_colaborador, cargo, salario,
CASE
WHEN salario < 3000 THEN 'Baixo'
WHEN salario BETWEEN 3000 AND 6000 THEN 'Médio'
ELSE 'Alto'
END AS categoria_salario
FROM HistoricoEmprego;


--- 29-08-2025 10:48:34 Banco+de+dados+Fokus.db.10
ALTER TABLE HistoricoEmprego RENAME TO CargosColaboradores;


