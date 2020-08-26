USE EMPLOYEE
GO

CREATE TABLE cadastro(
    code BIGINT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    estadoCivil VARCHAR(10),
    CHECK(code < 999999999 AND sexo IN ('MASCULINO', 'FEMENINO')),
    PRIMARY KEY(code)
);
GO

CREATE TABLE processamento(
    code INT NOT NULL,
    mes DATE NOT NULL,
    salario bigint 
    PRIMARY KEY(code)
);
GO

insert into cadastro values (11255, 'Fenias', 'Masculino', 'Solteiro');