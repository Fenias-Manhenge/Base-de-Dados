USE EMPLOYEE
GO

CREATE TABLE register(
    code int NOT NULL,
    names VARCHAR(50),
    sex VARCHAR(10),
    maritalStatus VARCHAR(15),
    CHECK(code < 999999999 AND sex IN ('MASCULINO', 'FEMENINO')),
    PRIMARY KEY(code)
);
Go

CREATE TABLE processing(
    code INT NOT NULL,
    months DATE,
    salary bigint, 
    PRIMARY KEY(code)
);
Go


select* From register;