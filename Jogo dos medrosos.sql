CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
id_classes BIGINT AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
sociabilidade BOOLEAN,
PRIMARY KEY (id_classes)
);

CREATE TABLE tb_Personagem (
  id_personagem BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  nivel INT,
  classe BIGINT,
  forca INT,
  inteligencia INT,
  FOREIGN KEY (classe) REFERENCES tb_classes(id_classes)
);
 


INSERT INTO tb_classes (nome, sociabilidade) VALUES
 ("necromante",false),
 ("Orc",false),
("Guerreiro",true), 
("Mago",true),
 ("Elfo Negro",false)
 ;

INSERT INTO tb_personagem (nome, nivel, classe, forca, inteligencia) VALUES
('Tim, o medroso', 10, 1, 2500, 800),
('Carol, a covarde', 12, 1, 2800, 750),
('Tom, o tremelique', 8, 2, 1200, 3000),
('Fred, o fraco', 7, 3, 1600, 600),
('Renato, o receoso', 15, 4, 3000, 900),
('Ana, a assustada', 10, 5, 2000, 1200),
('Marcelo, o medroso', 5, 1, 1000, 500),
('Tereza, a temerosa', 9, 3, 1900, 700);

SELECT * FROM tb_personagem WHERE (forca + inteligencia) > 2000;

SELECT * FROM tb_personagem WHERE (forca >= 1000 AND forca <= 2000) AND classe IS NOT NULL;

SELECT * FROM tb_personagem WHERE nome LIKE 'C%';

SELECT tb_personagem.nome, tb_personagem.nivel, tb_classes.nome as classe
FROM tb_personagem
INNER JOIN tb_classes ON tb_personagem.classe = tb_classes.id_classes;

SELECT tb_personagem.nome, tb_personagem.nivel, tb_classes.nome as classe
FROM tb_personagem
INNER JOIN tb_classes ON tb_personagem.classe = tb_classes.id_classes
WHERE tb_classes.nome = 'Guerreiro';
    
drop table tb_Personagem;
    
    







