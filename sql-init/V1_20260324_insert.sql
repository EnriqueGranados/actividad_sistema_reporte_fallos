-- =======================================================================
-- Inserciones en las Tablas.
-- =======================================================================

-- Inserción de 5 pizarras.
INSERT INTO pizarras (ubicacion, estado) VALUES
('Aula 14 - Edificio TIC', 'Operativa'),
('Aula 15 - Edificio TIC', 'Operativa'),
('Laboratorio de Redes 1', 'Operativa'),
('Auditorio Principal', 'Operativa'),
('Aula 10 - Facultad de Ciencias', 'Fuera de Servicio');

-- Inserción de 5 técnicos.
INSERT INTO tecnicos (nombre, especialidad) VALUES
('Carlos Martínez', 'Soporte de Hardware'),
('Ana Gómez', 'Redes y Conectividad'),
('Luis Herrera', 'Redes y Conectividad'),
('Marta López', 'Soporte de Hardware'),
('Jorge Ramos', 'Soporte de Hardware');

/* 
Inserción de 5 reportes de fallos, colocamos la restricción del nivel_prioridad (valores del 1 al 5). Con estas 
inserciones el trigger "trg_cambio_estado_pizarra" se disparará, pasando el estado de las 4 pizarras que están 
operativas a "En Reparación".
*/
INSERT INTO reportes_fallos (fecha, descripcion, id_pizarra, id_tecnico, nivel_prioridad) VALUES
(CURRENT_DATE, 'Pantalla táctil no responde', 1, 1, 5),
(CURRENT_DATE, 'Proyector con luz parpadeante', 2, 2, 4),
(CURRENT_DATE, 'Sin conexión a la red de la UJI', 3, 3, 3),
(CURRENT_DATE, 'Altavoces integrados no suenan', 4, 2, 2),
(CURRENT_DATE, 'Fallo en la placa base', 5, 5, 5);