-- Criar Banco de Dados
CREATE DATABASE Escola;

-- Abrir banco de dados
USE Escola;

-- Criar Tabela
CREATE TABLE Colegio(
 ColegioId int auto_increment primary key,
 NomeEscola varchar(255),
 Endereco varchar (255),
 Telefone varchar (15)
);

CREATE TABLE Alunos(
 Matricula int auto_increment primary key,
 AlunoId int,
 NomeAluno varchar(255),
 DataNascimento date,
 Endereco varchar(255),
 Telefone varchar(15),
 FOREIGN KEY (AlunoId) REFERENCES Colegio(ColegioId)
);

-- Tabela Colegio
INSERT INTO Colegio (NomeEscola, Endereco, Telefone) VALUES
("SENAI1", "Travessa Rua", "(44)92638-4435");

INSERT INTO Colegio (NomeEscola, Endereco, Telefone) VALUES
("SENAI", "Travessa Rua", "(44)92638-4435");

INSERT INTO Colegio (NomeEscola, Endereco, Telefone) VALUES
("SENAI3", "Travessa Rua", "(44)92638-4435");

INSERT INTO Colegio (NomeEscola, Endereco, Telefone) VALUES
("SENAI4", "Travessa Rua", "(44)92638-4435");

INSERT INTO Colegio (NomeEscola, Endereco, Telefone) VALUES
("SENAI4", "Travessa Rua", "(44)92638-4435");

-- Tabela Alunos 
INSERT INTO Alunos (AlunoId, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(1, "Julio", "2000-03-12", "Jubilei1", "(71)98351-3821");

INSERT INTO Alunos (AlunoId, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(2, "Julio2", "2000-03-13", "Jubilei2", "(71)98351-3825");

INSERT INTO Alunos (AlunoId, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(3,"Julio3", "2000-03-14", "Jubilei3", "(71)98351-3826");

INSERT INTO Alunos (AlunoId, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(4,"Julio4", "2000-03-15", "Jubilei4", "(71)98351-3827");

INSERT INTO Alunos (AlunoId, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(5, "Julio5","2000-03-16", "Jubilei5", "(71)98351-3828");

-- Trazer os Dados do Colégio

SELECT * FROM Colegio;

SELECT * FROM Alunos;

-- Deletar Tabela

DROP TABLE Alunos;
DROP TABLE Colegio;

-- Contagem

SELECT
C.NomeEscola AS "Nome do Colégio",
count(A.Matricula) AS "Matriculados"
FROM Colegio C
INNER JOIN Alunos A
ON C.ColegioId = A.AlunoId group by C.NomeEscola;
