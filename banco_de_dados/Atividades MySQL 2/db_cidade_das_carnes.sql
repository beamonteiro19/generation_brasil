CREATE DATABASE db_cidade_das_carnes ;

USE db_cidade_das_carnes;

-- TABELA CATEGORIAS
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_carne VARCHAR(50) NOT NULL,
    origem VARCHAR(50) NOT NULL 
);

-- TABELA PRODUTOS
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade DECIMAL NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- INSERIR CATEGORIAS
INSERT INTO tb_categorias(categoria_carne, origem) VALUES
("Bovinos","Sul do Brasil"),
("Aves","Nordeste do Brasil"),
("Peixaria","Sudeste do Brasil"),
("Suínos","Centro-Oeste do Brasil"),
("Churrasco", "Argentina"),
("Linguiça", "Sul do Brasil"),
("Cortes Especiais", "Remetentes variados"),
("Salmão", "Chile");


-- INSERIR PRODUTOS
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES
("Picanha", 89.90, 15, 1),
("Frango Inteiro", 25.00, 40, 2),
("Tilápia", 32.00, 25, 3),
("Costelinha Suína", 45.00, 20, 4),
("Kit Churrasco", 120.00, 10, 5),
("Linguiça Toscana", 28.00, 35, 6),
("Filé Mignon", 95.00, 12, 7),
("Coxa de Frango", 18.00, 50, 2);


-- ################################################ COMANDOS ABAIXO ##############################################

-- PRODUTOS COM VALOR > R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- PRODUTOS COM VALOR ENTRE R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- SELECT LIKE
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- SELECT COM INNER JOIN
SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.categoria_carne, tb_categorias.origem
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- SELECT COM INNER JOIN CATEGORIA ESPECIFICA
SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.categoria_carne, tb_categorias.origem
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria_carne = "Aves";

-- TESTE
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
