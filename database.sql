CREATE DATABASE UC12SA3ER1
GO

USE UC12SA3ER1
GO

CREATE TABLE cadUsuario
(
	Id INT PRIMARY KEY IDENTITY,
	Email VARCHAR(50) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
)
GO

INSERT INTO cadUsuario VALUES ('email@email.com', 1234) 
INSERT INTO cadUsuario VALUES ('email2@email.com', 1234)

SELECT Email, Senha FROM cadUsuario

SELECT Email, HASHBYTES('MD2', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('MD4', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('MD5', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('SHA', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('SHA1', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('SHA2_256', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1
SELECT Email, HASHBYTES('SHA2_512', Senha) AS 'Senha HASH' FROM cadUsuario WHERE Id = 1