CREATE DATABASE atvd01;
-- na verdade é o 3 mas abafa
use atvd01;

CREATE TABLE estudantes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  sexo VARCHAR(1) NOT NULL,
  nota FLOAT NOT NULL
);

INSERT INTO estudantes (nome, idade, sexo, nota) VALUES 
  ('Maria', 18, 'F', 9.5),
  ('João', 17, 'M', 8.0),
  ('Ana', 16, 'F', 7.0),
  ('Pedro', 18, 'M', 6.5),
  ('Fernanda', 17, 'F', 9.0),
  ('Rafael', 16, 'M', 8.5),
  ('Luiza', 19, 'F', 9.2),
  ('Carlos', 18, 'M', 7.8);
  
    SELECT * FROM estudantes WHERE nota > 7.0;
	SELECT * FROM estudantes WHERE nota < 7.0;
	UPDATE estudantes SET nota = 8.0 WHERE id = 3;
