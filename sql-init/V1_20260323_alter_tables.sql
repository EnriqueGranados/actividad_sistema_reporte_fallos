-- =======================================================================
-- Módulo 2: Alteración de Tablas.
-- =======================================================================

-- Alteración de la tabla reportes_fallos.
ALTER TABLE reportes_fallos
ADD COLUMN nivel_prioridad NUMERIC(1,0) CONSTRAINT prioridad_valida CHECK (nivel_prioridad BETWEEN 1 AND 5);