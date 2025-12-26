


SELECT *FROM VENDEDORES;

-- Inicia uma área temporaria do banco de dados
BEGIN TRANSACTION

SELECT *FROM VENDEDORES;

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.1;

COMMIT -- confirma todas alterações feitas no banco de dados 


BEGIN TRANSACTION 

INSERT INTO VENDEDORES 
VALUES ('239', 'Maria Joana', 'Copacabana', '0.2', '2015-01-01', 1);


ROLLBACK-- retornar o banco ao estado antes do inicio da transação