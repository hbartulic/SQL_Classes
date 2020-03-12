-- github - gerenciador de código 
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
--------------------------------------------------------------------------------------------------------------------------------------------
-- DDL
-- (ALTER - ADD / MODIFY)

ALTER TABLE tbAlunos
ADD
	sexo CHAR (1); -- M ou F
    -- OPTATIVO: [FIRST | AFTER column_name
    
    ALTER TABLE tbAlunos
		MODIFY sexo CHAR(1) NOT NULL
		AFTER nome;    
----------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO tbAlunos (
		rgm, nome, sexo, email, dtnasci, ID_Curso)
values  (201, "Heloiza Bartulic", "F", "heloiza.b.a@outlook.com","1990-06-04", 2),
		(202, "Pedro Souza", "M", "pedro.s@outlook.com", "1990-05-03",3);
               
SELECT * FROM faculdade.tbalunos;
---------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM faculdade.tbalunos;

-- CRIAR TABELA CURSOS (FACULDADE)
CREATE TABLE cursos (
ID_Curso int auto_increment PRIMARY KEY,
nome VARCHAR    (50) NOT NULL,
duracao INT NOT NULL,
Periodo VARCHAR (30) NOT NULL
);
INSERT INTO Cursos (Nome, Duracao, Periodo, ID_Curso)
values ("Biologia", 8, "Matutino",1);
INSERT INTO Cursos (Nome, Duracao, Periodo)
values ("ADS", 4, "Matutino",2);
INSERT INTO Cursos (Nome, Duracao, Periodo)
values ("ADS", 4, "Noturno",3);
--------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE tbalunos 
	ADD	idCurso INT;
    
    ALTER TABLE tbalunos 
	MODIFY	idCurso INT NOT NULL;
    
    ALTER TABLE tbalunos
    ADD CONSTRAINT FK_idCurso
    FOREIGN KEY (idCurso) REFERENCES Cursos(idCursos);
--------------------------------------------------------------------------------------------------------------------------------------------------    
SELECT * FROM faculdade.tbalunos;    

DELETE FROM tbalunos
WHERE rgm > 0; 

SELECT * FROM faculdade.cursos;
------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE customers (
customerNumber INT PRIMARY KEY,
customerName VARCHAR (50),
contactLastName VARCHAR (50),
contactFirstName VARCHAR (50),
phone VARCHAR (11),
addressLine1 VARCHAR (50),
addressLine2 VARCHAR (50),
city VARCHAR (20),
state CHAR (2),
postalCode VARCHAR (15),
country VARCHAR (20),
salesRepEmployeeNumber VARCHAR (50),
creditLimit FLOAT
);

CREATE TABLE orders (
orderNumber INT auto_increment PRIMARY KEY,
oderDate DATE,
requiredDate DATE,
shippedDate DATE,
OrderStatus VARCHAR (50),
comments VARCHAR (100),
customerNumber INT 
);

SELECT * FROM faculdade.customers;
SELECT * FROM faculdade.orders;

ALTER TABLE orders
	ADD CONSTRAINT FK_customersNumber
		FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber);