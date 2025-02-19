CREATE DATABASE projetfinal;
USE projetfinal;

CREATE TABLE Carros (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Preco DECIMAL(10, 2) NOT NULL,   -- Usando DECIMAL para valores monetários
    modelo VARCHAR(50) NOT NULL,
    Cor VARCHAR(30) NOT NULL,
    Placa VARCHAR(10) UNIQUE NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    VendaAlugar VARCHAR(30) NOT NULL,
    Imagem VARBINARY(MAX) NULL       -- Armazena a imagem em formato binário
);
DELETE FROM carros WHERE id = 1 ;

SELECT * FROM Carros ORDER BY NEWID();

DROP TABLE Carros;

INSERT INTO Carros (Preco, modelo, Cor, Placa, descricao, VendaAlugar, Imagem)
VALUES 
(150.00, 'Fiat Uno', 'Vermelho', 'ABC-1234', 'Carro em bom estado, ideal para viagens curtas ou uso diário.', 'Alugar', NULL);

CREATE TABLE Usuario (
 id_cliente INT PRIMARY KEY IDENTITY(1,1),
 email VARCHAR(255) NOT NULL UNIQUE,
 senha VARCHAR(100) NOT NULL,
 nome VARCHAR(100) NOT NULL,
 cpf CHAR(16) NOT NULL UNIQUE,
 data_nascimento DATE
);
INSERT INTO Usuario (email, senha, nome, cpf, data_nascimento) 
VALUES 
('rafael.carvalho@email.com', 'rcarvalho2008', 'rafael Nunes de Carvalho', '066.270.481-31', '2008-01-18')

SELECT * FROM Usuario
