CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
classe_personagem VARCHAR(50) NOT NULL,
nivel_dificuldade VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
caracteristica VARCHAR(50) NOT NULL,
ult VARCHAR(50) NOT NULL,
pontos_ult DECIMAL NOT NULL,
classe_id BIGINT,
poder_defesa DECIMAL NOT NULL,
poder_ataque DECIMAL NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);


-- INSERT NA TABELA CLASSES:
INSERT INTO tb_classes(classe_personagem, nivel_dificuldade)
VALUES("Duelista","Fácil - Dificil");

INSERT INTO tb_classes(classe_personagem, nivel_dificuldade)
VALUES("Iniciador","Intermediário - Difícil");

INSERT INTO tb_classes(classe_personagem, nivel_dificuldade)
VALUES("Controlador","Intermediário - Difícil");

INSERT INTO tb_classes(classe_personagem, nivel_dificuldade)
VALUES("Sentinela","Fácil - Intermediário");


-- INSERT NA TABELA PERSONAGENS:
INSERT INTO tb_personagens(nome, caracteristica, ult, pontos_ult, classe_id, poder_defesa, poder_ataque)
VALUES("Brimstone","Suporte coordenado", "Ataque Orbital", 7, 3, 1800, 2000),
("Phoenix","Pressão agressiva", "Renascimento", 6, 1, 1200, 2500),
("Sage","Sustentação vital", "Ressurreição", 8, 4, 2200, 1500),
("Sova","Inteligência tática", "Fúria do Caçador", 8, 2, 1600, 2000),
("Reyna","Eliminação solo", "Imperatriz", 6, 1, 1300, 2600),
("Killjoy","Defesa tecnológica", "Confinamento", 7, 4, 2300, 1500),
("Breach","Abertura explosiva", "Trovão Rolante", 7, 2, 1600, 2100),
("Omen","Infiltração furtiva", "Das Sombras", 7, 3, 1800, 1850),
("Jett","Mobilidade ofensiva", "Tempestade de Lâminas", 7, 1, 1200, 2700),
("Raze","Dano em área", "Estraga-Prazeres", 8, 1, 1250, 2800),
("Skye","Suporte versátil", "Predadores", 7, 2, 1650, 2000),
("Yoru","Distração ilusória", "Passagem Dimensional", 7, 1, 1300, 2400),
("Astra","Manipulação global", "Divisa Cósmica", 7, 3, 1850, 1750),
("KAY/O","Supressão inimiga", "COMANDO:NULL", 8, 2, 1700, 2100),
("Chamber","Contenção precisa", "Tour de Force", 7, 4, 2200, 1600),
("Neon","Avanço relâmpago", "Sobrecarga", 7, 1, 1250, 2500),
("Fade","Rastreamento psicológico", "Queda da Noite", 7, 2, 1600, 2050),
("Harbor","Bloqueio fluido", "Julgamento", 7, 3, 1900, 1800),
("Gekko","Controle criativo", "Thrash", 7, 2, 1650, 1950),
("Deadlock","Contenção rígida", "Aniquilação", 7, 4, 2400, 1500),
("Iso","Duelo calculado", "Contingência", 7, 2, 1600, 2000),
("Clove","Suporte adaptável", "Ainda Não Morri", 7, 3, 1850, 1750),
("Vyse","Defesa magnética", "À Prova de Balas", 7, 4, 2250, 1550),
("Tejo","Ataque veloz", "Armagedom", 7, 1, 1000, 2200);

-- ################################################ COMANDOS ABAIXO ##############################################

-- SELECT PODER ATAQUE:
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT PODER DEFESA NUM INTERVALO DE 1000 A 2000:
SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;

-- SELECT OPERADOR LIKE PARA BUSCAR PERSNAGENS COM A LETRA C NO ATRIBUTO NOME:
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- SELECT COM INNER JOIN:
SELECT nome, caracteristica, ult, pontos_ult, poder_defesa, poder_ataque, tb_classes.classe_personagem, tb_classes.nivel_dificuldade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

-- SELECT COM INNER JOIN ULTIMATE ESPECIFICA (DUELISTA):
SELECT nome, caracteristica, ult, pontos_ult, poder_defesa, poder_ataque, tb_classes.classe_personagem, tb_classes.nivel_dificuldade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.classe_personagem = 'Duelista';


SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

