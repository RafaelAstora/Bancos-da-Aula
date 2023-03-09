CREATE DATABASE db_quitanda;

use db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL (6,2),
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;


INSERT INTO tb_produtos(nome_produto,preco) VALUES ("Banana", 3.00),
("limão", 2.00);
	
    SET SQL_SAFE_UPDATES = 0;
    
    ALTER TABLE tb_produtos
    ADD marca varchar(20) null;
    
    update tb_produtos set marca = 'Turma da monica';
    
	ALTER TABLE tb_produtos DROP marca;

    
