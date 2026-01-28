CREATE DATABASE exe02;

USE exe02;


-- CRIAR TABELA
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
categoria VARCHAR(255),
estado VARCHAR(255),
valor DECIMAL NOT NULL,
quantidade_estoque INT,
primary key (id)
);

ALTER TABLE tb_produtos RENAME COLUMN quantade_estoque TO quantidade_estoque;



-- DADOS
INSERT INTO tb_produtos(nome_produto, categoria, estado, valor, quantidade_estoque)
VALUES("RX-550", "Hardware", "Novo", 500.00, 89),
("Headset Havit H2002D", "Periferico", "Novo", 169.00, 179),
("Delux M800 PRO", "Periferico", "Novo", 189.00, 900),
("Mousepad Havit Speed", "Escritorio", "Novo", 129.00, 127),
("Placa Mãe Asus Tuf Gaming B550 M Plus Wifi II", "Hardware", "Novo", 989.00, 91),
("Ryzen 5 5600GT", "Hardware", "Novo", 799.00, 65),
("2x8 XPG DDR 3200Mhz", "Hardware", "Novo", 469.00, 29),
("1tb M2 NVME", "Hardware", "Novo", 278.00, 35),
("Gabinete Redragon Grapple Lunar White", "Secretária", "Administração", 2456.00, 21);

-- VALORES MAIORES QUE 500
SELECT * FROM tb_produtos WHERE valor > 500;

-- VALORES MENORES QUE 500
SELECT * FROM tb_produtos WHERE valor < 500;

-- ATUALIZAR CATEGORIA
UPDATE tb_produtos SET categoria = "Escritorio" WHERE id = 36;

-- VER
SELECT * FROM tb_produtos;
