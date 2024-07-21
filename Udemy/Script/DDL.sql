-- database: ../database/udemy2k24.sqlite
/*
CopyRight
autor: Tipantiza Richard
fecha: 2024-07-21
Description: Sistema de educacion (udemy)
*/
DROP TABLE IF EXISTS PersonaTipo;
DROP TABLE IF EXISTS Persona;
DROP TABLE IF EXISTS PersonaUsuario;
DROP TABLE IF EXISTS CursoAlumno;
DROP TABLE IF EXISTS Curso;
DROP TABLE IF EXISTS CusroCategoria;
DROP TABLE IF EXISTS CursoPago;
DROP TABLE IF EXISTS FormaPago;

CREATE TABLE PersonaTipo (
    IdPersonaTipo   INTEGER PRIMARY KEY AUTOINCREMENT
    ,Nombre         TEXT NOT NULL UNIQUE
    ,Estado         VARCHAR(1) DEFAULT('A') CHECK (Estado  IN ('A','X'))
    ,FechaRegistro  DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica  DATE
    ,IdUsuarioModifica INTEGER 
);

CREATE TABLE Persona (
    IdPersona           INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaTipo      INTEGER NOT NULL 
    ,Nombre1            VARCHAR (20) NOT NULL UNIQUE  
    ,Nombre2            VARCHAR (20) NOT NULL UNIQUE  
    ,Apellido1          VARCHAR (20) NOT NULL UNIQUE  
    ,Apellido2          VARCHAR (20) NOT NULL UNIQUE  
    ,FechaNacimiento    DATE 
    ,Estatura           FLOAT NOT NULL UNIQUE
    ,Cedula             TEXT NOT NULL UNIQUE
    ,FechaRegistro      DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica      DATE
    ,IdUsuarioModifica  INTEGER     
    ,CONSTRAINT         fk_PersonaTipo FOREIGN KEY (IdPersonaTipo) REFERENCES  PersonaTipo(IdPersonaTipo) 
);

CREATE TABLE PersonaUsuario (
    IdPersona           INTEGER PRIMARY KEY AUTOINCREMENT
    ,Usuario            VARCHAR (20) NOT NULL UNIQUE
    ,Clave              VARCHAR (20) NOT NULL UNIQUE 
    ,FechaRegistro      DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica      DATE
    ,IdUsuarioModifica  INTEGER
);
