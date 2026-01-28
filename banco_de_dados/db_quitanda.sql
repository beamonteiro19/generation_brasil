CREATE DATABASE db_quitanda; -- comentario
USE db_quitanda;

-- criar tabela com os atributos e sua tipagem que é o BIGINT
CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT, -- AUTO_INCREMENT é uma clausula é um comando do tipo DDL ara definir que um Atributo da Tabela será do tipo Auto Incremental
	nome VARCHAR(50) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
    );
    
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1; -- SELECIONA TODOS OS DADOS DA TABELA ONDE O ID É I

SELECT * FROM tb_produtos WHERE preco < 5; -- SELECIONA TODOS OS ITENS DA TABELA ONDE O PRECO É MENOR QUE 5

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); -- 0000.00

UPDATE tb_produtos SET preco = 2.99 WHERE id = 6 -- DAI NAO CORRE RISCO DE ATULIZAR TODOS OS CAMPOS DE P´RECO PRARA 2.99 E SIM APENAS O ID CORRETO!

-- DELETAR OS DADOS DA TABELA
DELETE FROM tb_produtos WHERE id = 2;