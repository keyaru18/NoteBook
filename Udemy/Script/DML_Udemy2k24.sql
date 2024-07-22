-- database: ../database/udemy2k24.sqlite
/*
CopyRight
autor: Tipantiza Richard
fecha: 2024-07-21
Description: Sistema de educacion (udemy)
*/
INSERT INTO PersonaTipo
(Nombre) VALUES
('Instructor Udemy')
,('Estudiante');

INSERT INTO Idioma
(Idioma) VALUES
('English')
,('Desutsch')
,('Español')
,('Frances')
,('Bahasa Indonesia')
,('Italiano')
,('Nederlands')
,('Polski')
,('Portugues')
,('Romano')
,('Turco');

SELECT * FROM Idioma;

INSERT INTO Persona
(IdPersonaTipo, Nombre1, Nombre2, Apellido1, Apellido2, FechaNacimiento, Estatura, Cedula, FechaModifica, IdUsuarioModifica ) VALUES
('2', 'Maria', 'Elena', 'Sanchez', 'Delatorre', '2000-02-02', '1.58', '1754934012', '2024-07-21','1' )
,('1', 'Katty', 'Dolores', 'Tipantiza', 'Colcha', '2003-08-02', '1.70', '1739503957', '2024-07-21','2' )
,('1', 'Ivan', 'Eduardo', 'Jimenez', 'Albuja', '2005-12-24', '1.63', '1749204759', '2024-07-21','3' );

INSERT INTO Persona
(IdPersonaTipo, Nombre1, Nombre2, Apellido1, Apellido2, FechaNacimiento, Estatura, Cedula, FechaModifica, IdUsuarioModifica ) VALUES
('2', 'Christopher', 'Javier', 'Guagrilla', 'Tipantiza', '2004-03-02', '1.75', '1720485619', '2024-07-21','4' )
,('1', 'Camila', 'Daniela', 'Caicedo', 'Caceres', '2005-11-18', '1.69', '1739402840', '2024-07-21','5' );

INSERT INTO PersonaUsuario 
(IdPersona, Usuario, Clave, FechaModifica, IdUsuarioModifica ) VALUES
('1', 'Mary029', 'eyw82ew+ew', '2024-07-21', '1')
,('2', 'KatiaDoll', 'osj2048*])', '2024-07-21', '2')
,('3', 'Maquinador', '!"#efoij92', '2024-07-21', '3');
INSERT INTO PersonaUsuario 
(IdPersona, Usuario, Clave, FechaModifica, IdUsuarioModifica ) VALUES
('4', 'Dordia23', 'se0w3jd*])', '2024-07-21', '4')
,('5', 'BbaybDoll', '!"alla2983', '2024-07-21', '5');


INSERT INTO CursoCategoria
(Nombre) VALUES
('Desarrollo')
,('Negocios')
,('Finanzas y Contabilidad')
,('Informatica y Software')
,('Productividad en la oficina')
,('Desarrollo personal')
,('Diseño')
,('Marketing')
,('Estilo de vida')
,('Fotografia y video')
,('Salud y fitness')
,('Musica')
,('Enseñanzas y disciplinas academicas');

INSERT INTO Curso
(IdPersonaCreadorCurso, IdCursoCategoria, IdIdioma, Nombre, PrecioVenta, FechaModifica) VALUES
('2', '9', '4', 'Curso de Automaquillaje completo (Mitocadoryyo)', '44.99', '2017-06')
,('3', '7', '3', 'Creacion de modelos 3D pintados a mano para videojuegos', '19.99', '2017-01')
,('5', '7', '9', 'Como proyectar y construir chimeneas a leña', '64.99', '2014-07')
,('5', '12', '1', 'Aprende a tocar guitarra RAPIDO y FACIL con Guitarsimple', '39.99', '2014-02');

INSERT INTO CursoAlumno
(IdPersonaAlumno, IdCurso) VALUES
('1', '2')
,('2', '3')
,('2', '1')
,('3', '1')
,('3', '4');

INSERT INTO FormaPago
(Nombre, FechaModifica   ) VALUES
('Tarjetas de credito y debito', '2024-07')
,('Creditos de Udemy', '2024-07')
,('PayPal', '2024-07')
,('App Store de Apple y Google Play', '2024-07')
,('Boleto Bancario Pix', '2024-07')
,('Oxxo', '2024-07')
,('Pago fraccionado (Afterpay o Klarna)', '2024-07')
,('Pagos en efectivo y transferencias bancarias', '2024-07')
,('UPI o billeteras', '2024-07');


INSERT INTO CursoPago
(IdPersonaAlumno, IdCurso, IdFormaPago, Valor, FechaModifica, IdUsuarioModifica) VALUES
('1', '2' , '1', '19.99', '2024-07', '1')
,('2', '3' , '8','64.99',  '2024-07', '2')
,('2', '1' , '8','44.99',  '2024-07', '2')
,('3', '1' , '3','44.99',  '2024-07', '3')
,('3', '4' , '3','39.99',  '2024-07', '3');

SELECT * FROM PersonaUsuario;
