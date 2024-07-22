-- database: ../database/ExaBot2k24.sqlite
/*
CopyRight
autor: Tipantiza Richard
fecha: 2024-07-21
Description: insertar datos iniciales
*/

INSERT INTO PersonaTipo
(Nombre ) VALUES
('Estudiante')
,('Candidata a Reina');

INSERT INTO Edad 
(Edad) VALUES
('17')
,('18')
,('19')
,('20')
,('21')
,('22')
,('23')
,('24')
,('25');

INSERT INTO EstudianteEPN
(IdPersonaTipo, Nombre1       , Nombre2       , Apellido1     , Apellido2     , CorreoInstitucional, FechaModifica    ) VALUES
('1', 'Ivan','Andres', 'Palacios', 'Arias', 'ivan.palacios@epn.edu.ec','2024-07')
,('1','Sarah','Daniela', 'Aguirre', 'Arevalo', 'sarah.aguirre@epn.edu.ec','2024-07')
,('2','Dayana','Isabella', 'Pereira', 'Gallardo', 'dayana.pereira@epn.edu.ec','2024-07')
,('1','Michelle','Alejandra', 'Jimenez', 'Alcivar', 'michelle.jimenez@epn.edu.ec','2024-07')
,('2','Carolain','Nahomy', 'España', 'Ayobi', 'carolain.españa@epn.edu.ec','2024-07')
,('1','Brayan','Steven', 'Rivera', 'Moreno', 'brayan.rivera@epn.edu.ec','2024-07')
,('2','Adamaris','Lizeth', 'Lopez', 'Velez', 'adamaris.lopez@epn.edu.ec','2024-07');

INSERT INTO IngresoSistema
(IdEstudianteEPN, Cedula, Clave, FechaModifica    ) VALUES
('1', '1739403958', 'EIR95LWll0', '2024-07')
,('2', '1739402847', 'lie63kdl05', '2024-07')
,('3', '1739485069', 'sjdmf83jd5', '2024-07')
,('4', '1735243857', 'aldjd3qjw8', '2024-07')
,('5', '1725395049', 'aldhf5shd8', '2024-07')
,('6', '1736405962', 'ajdghf4jak', '2024-07')
,('7', '1728394059', '1683jd5fh7', '2024-07');

INSERT INTO CandidataReina
(IdEstudianteEPN, IdEdad, Eslogan, FechaModifica    ) VALUES
('3', '6', 'Innovación y belleza: reinando en el mundo de los sistemas.', '2024-07')
,('5', '3', 'Liderazgo con código: la reina que programa el futuro.', '2024-07')
,('7', '8', 'Entre algoritmos y sueños: una reina que conecta mundos.', '2024-07');

INSERT INTO Votos
(IdEstudianteEPN, IdCandidataReina) VALUES
('1','2')
,('2','3')
,('4','1')
,('6','1');

SELECT * FROM CandidataReina