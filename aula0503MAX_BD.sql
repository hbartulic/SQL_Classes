-- DDL -- CREATE, DROP, ALTER
-- comando para exibir os objetos do tipo database
SHOW DATABASES;
-- escolhe o database de trabalho
USE INFORMATION_SCHEMA;
-- mostra a tabela
SHOW tables;
-- seleciona um dado especifico, uma linha da tabela
SELECT * FROM CHARACTER_SETS;
SELECT * FROM COLLATIONS;

-- [CREATE DATABASE IF NOT EXISTS] evita mensagem do erro mas não cria
CREATE DATABASE IF NOT EXISTS faculdade
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

USE faculdade;

CREATE TABLE tbAlunos (
	rgm INT PRIMARY KEY,
    nome VARCHAR  (50) NOT NULL,
    email VARCHAR (50) NOT NULL,
    dtnasci DATE   NOT NULL  
    );
    



 
 




