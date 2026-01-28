CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- TABELA CATEGORIAS
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,       
    restricao VARCHAR(50) NOT NULL   
);

-- TABELA PRODUTOS
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- INSERIR CATEGORIAS
INSERT INTO tb_categorias(tipo, restricao) VALUES
("Medicamento", "Tarja vermelha"),
("Medicamento", "Sem tarja"),
("Cosmético", "Livre"),
("Higiene", "Livre"),
("Vitamina", "Sem tarja");

-- INSERIR PRODUTOS
INSERT INTO tb_produtos(nome, descricao, preco, quantidade, categoria_id) VALUES
("Dipirona 500mg", "Analgésico e antitérmico", 12.90, 20, 2),
("Paracetamol 750mg", "Analgésico e antitérmico", 15.50, 10, 2),
("Amoxicilina 500mg", "Antibiótico", 28.00, 21, 1),
("Ibuprofeno 400mg", "Anti-inflamatório", 18.90, 30, 2),
("Omeprazol 20mg", "Antiácido", 52.00, 28, 1),
("Shampoo Anticaspa", "Cosmético capilar", 65.00, 1, 3),
("Vitamina C 1g", "Suplemento vitamínico", 55.00, 30, 5),
("Sabonete Líquido", "Produto de higiene", 9.90, 1, 4);

-- ################################################ COMANDOS ABAIXO ##############################################

-- PRODUTOS COM VALOR > R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- PRODUTOS COM VALOR ENTRE R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT LIKE
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- SELECT COM INNER JOIN
SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.tipo, tb_categorias.restricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- SELECT COM INNER JOIN CATEGORIA ESPECIFICA
SELECT tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.tipo, tb_categorias.restricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Cosmético";

-- TESTE
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
