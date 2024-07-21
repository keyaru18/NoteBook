-- database: ../database/ExaBot2k24.sqlite
/*
CopyRight
autor: Tipantiza Richard
fecha: 2024-07-21
Description: insertar datos iniciales
*/

INSERT INTO PersonaTipo
(Nombre) VALUES
('Soldado')
,('Mecanico')
,('Experto Ingles')
,('Expero Espanol');
INSERT INTO Persona
(IdPersonaTipo,     Cedula,     Nombre) VALUES
(2, '1754874939', 'Richard Tipantiza');  

UPDATE  Persona
SET     Nombre      = 'Akeno Himejima'
WHERE   IdPersona   = '3';

SELECT tp.Nombre 'Cargo' , p.Nombre 'Nombres'
FROM PersonaTipo tp
JOIN Persona p ON tp.IdPersonaTipo = p.IdPersonaTipo;

SELECT * FROM Persona;
SELECT count(*) 'Nro Tipo Persona' FROM PersonaTipo;
SELECT * FROM PersonaTipo WHERE IdPersonaTipo = 2;
SELECT * FROM PersonaTipo WHERE IdPersonaTipo < 4;
SELECT Nombre FROM PersonaTipo WHERE IdPersonaTipo < 4;
SELECT Nombre FROM PersonaTipo WHERE Nombre like "e%";
SELECT Nombre FROM PersonaTipo WHERE Nombre like "%o";
SELECT Nombre FROM PersonaTipo WHERE Nombre like "%o%";
