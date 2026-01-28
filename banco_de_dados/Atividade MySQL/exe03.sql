CREATE DATABASE exe03;

USE exe03;

-- CRIAR TABELA
CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
turma VARCHAR(50),
nota DECIMAL(3,1) NOT NULL,
data_matricula DATE,
PRIMARY KEY (id)
);

-- DADOS
INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula)
VALUES
("Ana Souza", 15, "9A", 8.5, "2023-02-10"),
("Bruno Lima", 16, "9B", 6.8, "2023-02-11"),
("Carla Mendes", 14, "8A", 7.2, "2023-02-12"),
("Diego Santos", 15, "9A", 5.9, "2023-02-13"),
("Fernanda Alves", 17, "3EM", 9.1, "2023-02-14"),
("Gabriel Costa", 16, "2EM", 4.7, "2023-02-15"),
("Helena Martins", 14, "8B", 7.8, "2023-02-16"),
("Igor Pereto", 15, "9C", 6.5, "2023-02-17");

-- SELECIONAR NOTAS MAIORES QUE 7
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- SELECIONAR NOPTAS INFERIORES A 7
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- ATUALIZAR
UPDATE tb_estudantes SET nota = 7.5WHERE nome = "Bruno Lima";

-- VER
SELECT * FROM tb_estudantes;


