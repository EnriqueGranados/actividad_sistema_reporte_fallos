-- =======================================================================
-- Módulo 2: Optimización Mediante Índices.
-- =======================================================================

-- Índice sobre la columna fecha.
CREATE INDEX idx_reportes_fecha ON reportes_fallos (fecha);

-- Índice sobre el técnico asignado.
CREATE INDEX idx_reportes_tecnico ON reportes_fallos (id_tecnico);

/*
Análisis de Índices

La creación de estos índices afecta directamente al Planificador de Consultas, permitiéndole 
elegir rutas de acceso más eficientes en lugar de realizar un escaneo secuencial de toda 
la tabla. No obstante, a pesar de esta clara ventaja, el administrador se enfrenta a la 
necesidad de balancear la velocidad de lectura contra el "coste del equipamiento adicional" 
en las operaciones de escritura. Cada nuevo índice añadido penaliza las sentencias 
INSERT, UPDATE y DELETE, ya que exigen un mantenimiento simultáneo tanto en la tabla 
principal como en los índices asociados.
*/