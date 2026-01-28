CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(50) NOT NULL,
tamanho VARCHAR(50) NOT NULL
); 

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
ingredientes VARCHAR(100) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
borda_recheada BOOLEAN NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- INSERIR CATEGORIAS:
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Doce", "Grande"), 
("Salgada", "Grande"),
("Doce", "Broto"),
("Salgada", "Broto"),
("Salgada", "Média");


-- INSERIR PIZZAS:
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda_recheada, categoria_id)
VALUES ("Marguerita", "Mussarela, tomate, manjericão", 42.00, false, 2),
("Calabresa", "Calabresa, cebola, mussarela", 48.00, true, 2), 
("A Moda", "Frango, catupiry, milho", 55.00, true, 5),
("Mussarela", "Mussarela, orégano", 40.00, false, 2),
("Atum", "Atum, cebola, mussarela", 60.00, false, 5),
("Chocolate", "Chocolate ao leite", 50.00, true, 1), 
("Romeu e Julieta", "Goiabada, queijo", 65.00, false, 3),
("Brigadeiro", "Chocolate, granulado", 70.00, true, 1);

-- ################################################ COMANDOS ABAIXO ##############################################

-- PIZZAS COM VALOR > R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- PIZZAS COM VALOR < R$ 45,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT OPERADOR LIKE PARA BUSCAR PERSNAGENS COM A LETRA M NO ATRIBUTO NOME:
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- SELECT COM INNER JOIN:
SELECT nome, ingredientes, preco, borda_recheada, categoria_id, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- SELECT COM INNER JOIN CATEGORIA ESPECIFICA (DOCE):
SELECT nome, ingredientes, preco, borda_recheada, categoria_id, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';

-- TESTE:
SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;