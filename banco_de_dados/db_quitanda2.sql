CREATE DATABASE db_quitanda2;

USE db_quitanda2;


-- TABELA CATEGORIAS
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);



-- TABELA PRODUTOS
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("tomate",100, "2023-12-15", 8.00, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("maçã",20, "2023-12-15", 5.00, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("laranja",50, "2023-12-15", 10.00, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("banana",200, "2023-12-15", 12.00, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("uva",1200, "2023-12-15", 30.00, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("pêra",500, "2023-12-15", 2.99, 1);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, categoria_id) 
values ("Alface",240, "2023-12-15", 5.99, 2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
values ("Sacola Verde", 1000, 0.10);

INSERT INTO tb_produtos (nome, quantidade, preco)
values ("Sacola Cinza", 1000, 0.10);

-- CADASTRAR OS DADOS NA TB_CATEGORIA
INSERT INTO tb_categorias (descricao) VALUES
("Frutas"), ("Verduras"), ("Legumes"), ("Temperos"), ("Ovos"), ("Outros");

-- ORDENAÇÃO POR NOME EM ORDEM ALFABETICA
SELECT * FROM tb_produtos ORDER BY nome ASC;

SELECT * FROM tb_produtos ORDER BY nome DESC;

SELECT * FROM tb_produtos WHERE preco in (5.00, 10.00, 15.00);

-- CONSULTA POR INNER JOIN INTERSECCAO (ITENS EM RELACIONAMENTO)
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;


-- CONSULTA MAIS ABRANGENTE, MOSTRA OS IOTEMS QUE TEM E NAO TEM RELACIONAMENTO
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;


SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;