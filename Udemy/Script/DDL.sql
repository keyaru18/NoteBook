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
DROP TABLE IF EXISTS CursoCategoria;
DROP TABLE IF EXISTS CursoPago;
DROP TABLE IF EXISTS FormaPago;

CREATE TABLE PersonaTipo (
    IdPersonaTipo   INTEGER PRIMARY KEY AUTOINCREMENT
    ,Nombre         TEXT NOT NULL UNIQUE
    ,Estado         VARCHAR(1) DEFAULT('A') CHECK (Estado  IN ('A','X'))
    ,FechaRegistro  DATETIME DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE Persona (
    IdPersona           INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaTipo      INTEGER NOT NULL REFERENCES PersonaTipo(IdPersonaTipo)
    ,Nombre1            VARCHAR (20) NOT NULL   
    ,Nombre2            VARCHAR (20) NOT NULL   
    ,Apellido1          VARCHAR (20) NOT NULL   
    ,Apellido2          VARCHAR (20) NOT NULL   
    ,FechaNacimiento    DATE 
    ,Estatura           FLOAT NOT NULL UNIQUE
    ,Cedula             TEXT NOT NULL UNIQUE
    ,FechaRegistro      DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica      DATE
    ,IdUsuarioModifica  INTEGER      
);

CREATE TABLE PersonaUsuario (
    IdPersona           INTEGER NOT NULL UNIQUE
    ,Usuario            VARCHAR (20) NOT NULL UNIQUE
    ,Clave              VARCHAR (20) NOT NULL UNIQUE 
    ,FechaRegistro      DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica      DATE
    ,IdUsuarioModifica  INTEGER
    ,FOREIGN KEY (IdPersona) REFERENCES Persona(IdPersona) ON DELETE CASCADE
);

CREATE TABLE CursoAlumno (
    IdCursoAlumno       INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaAlumno    INTEGER NOT NULL REFERENCES Persona(IdPersona)
    ,IdCurso            INTEGER NOT NULL REFERENCES Curso(IdCurso)
);

CREATE TABLE CursoCategoria (
    IdCursoCategoria    INTEGER PRIMARY KEY AUTOINCREMENT
    ,Nombre             VARCHAR (100) NOT NULL UNIQUE   
    ,FechaRegistro      DATETIME DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE Curso (
    IdCurso                 INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaCreadorCurso  INTEGER NOT NULL REFERENCES Persona(IdPersona)
    ,IdCursoCategoria       INTEGER NOT NULL REFERENCES CursoCategoria(IdCursoCategoria)
    ,Nombre                 VARCHAR (300) NOT NULL UNIQUE
    ,PrecioVenta            FLOAT NOT NULL UNIQUE
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE
);

CREATE TABLE CursoPago (
    IdCursoPago             INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdPersonaAlumno        INTEGER NOT NULL REFERENCES Persona(IdPersona)
    ,IdCurso                INTEGER NOT NULL REFERENCES Curso(IdCurso)
    ,IdFormaPago            INTEGER NOT NULL REFERENCES FormaPago(IdFormaPago)
    ,Valor                  FLOAT NOT NULL 
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE
    ,IdUsuarioModifica      INTEGER
);

CREATE TABLE FormaPago (
    IdFormaPago             INTEGER PRIMARY KEY AUTOINCREMENT
    ,Nombre                 VARCHAR (20) NOT NULL UNIQUE
    ,FechaRegistro          DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FechaModifica          DATE 
);