CREATE DATABASE exe01;

USE exe01;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255),
setor VARCHAR(255),
salario DECIMAL NOT NULL,
data_admissao DATE,
data_demissao DATE,
primary key (id)
);

ALTER TABLE tb_colaboradores RENAME TO tb_colaboradores;
ALTER TABLE tb_colaboradores DROP COLUMN data_demissao;

INSERT INTO tb_colaboradores(nome, cargo, setor, salario, data_admissao)
VALUES("Evandro", "Assistente Administrativo", "Administração", 2456.00, "2023-10-20"),
("Leandro", "Contador", "Administração", 3456.00, "2020-03-01"),
("Amanda", "Assistente Juridico", "Juridico",4057.00, "2019-09-17"),
("Alessandra", "Advogada", "Juridico",7089.00, "2018-10-19"),
("Fátima", "Secretária", "Administração", 2456.00, "2018-10-17");


INSERT INTO tb_colaboradores(nome, cargo, setor, salario, data_admissao)
VALUES("Beatriz", "Estagiaria", "Administração", 1999.00, "2025-11-25");

DELETE FROM tb_colaboradores WHERE id = 1 AND id = 2;

-- SELECT colaboradores com salário menor que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- SELECT colaboradores com salário maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;


-- ATUALIZAR
UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 8;

-- VER
SELECT * FROM tb_colaboradores;

