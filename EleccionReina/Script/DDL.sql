-- database: ../database/ExaBot2k24.sqlite
/*
CopyRight
autor: Tipantiza Richard
fecha: 2024-07-21
Description: insertar datos iniciales
*/

DROP TABLE IF EXISTS PersonaTipo;
DROP TABLE IF EXISTS EstudianteEPN;
DROP TABLE IF EXISTS Edad;
DROP TABLE IF EXISTS IngresoSistema;
DROP TABLE IF EXISTS CandidataReina;
DROP TABLE IF EXISTS Votos;


CREATE TABLE PersonaTipo (
    IdPersonaTipo           INTEGER PRIMARY KEY AUTOINCREMENT
    ,Nombre                 VARCHAR (15) NOT NULL UNIQUE
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE Edad (
    IdEdad                  INTEGER PRIMARY KEY AUTOINCREMENT
    ,Edad                   INTEGER NOT NULL 
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE EstudianteEPN (
    IdEstudianteEPN         INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaTipo          INTEGER NOT NULL REFERENCES PersonaTipo(IdPersonaTipo) 
    ,Nombre1                VARCHAR (15) NOT NULL
    ,Nombre2                VARCHAR (15) NOT NULL              
    ,Apellido1              VARCHAR (15) NOT NULL
    ,Apellido2              VARCHAR (15) NOT NULL
    ,CorreoInstitucional    VARCHAR (40) NOT NULL
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE
);

CREATE TABLE IngresoSistema (
    IdIngresoSistema        INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdEstudianteEPN        INTEGER NOT NULL 
    ,Cedula                 VARCHAR (10) NOT NULL UNIQUE
    ,Clave                  VARCHAR (10) NOT NULL UNIQUE
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE
    ,CONSTRAINT             Tablesame FOREIGN KEY (IdEstudianteEPN) REFERENCES  EstudianteEPN(IdEstudianteEPN)
);

CREATE TABLE CandidataReina(
    IdCandidataReina       INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdEstudianteEPN        INTEGER NOT NULL
    ,IdEdad                 INTEGER NOT NULL REFERENCES Edad(IdEdad)
    ,Eslogan                VARCHAR (50) NOT NULL UNIQUE 
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE
    ,CONSTRAINT             Tablesame FOREIGN KEY (IdEstudianteEPN) REFERENCES  EstudianteEPN(IdEstudianteEPN)
);

CREATE TABLE Votos (
    IdVotos                INTEGER PRIMARY KEY AUTOINCREMENT,
    IdEstudianteEPN        INTEGER NOT NULL REFERENCES EstudianteEPN(IdEstudianteEPN),
    IdCandidataReina       INTEGER NOT NULL REFERENCES CandidataReina(IdCandidataReina),
    FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
);
