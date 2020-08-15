CREATE DATABASE HOTEL
GO
USE HOTEL
GO

CREATE TABLE cliente(
    bi bigint not NULL,
    nome VARCHAR(50) NOT NULL,
    cidade VARCHAR(20) not null,
    pais VARCHAR(15) NOT NULL,
    PRIMARY KEY(bi)
);



INSERT into cliente values (123213, 'Fenias', 'Maputo', 'Mozambique');

SELECT *
FROM cliente;

-- CREATE TABLE reserva(

-- );
