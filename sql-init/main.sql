-- =======================================================================
-- Inicialización (MAIN).
-- =======================================================================

-- Módulo 1.
\i /docker-entrypoint-initdb.d/V1_20260323_create_tables.sql
\i /docker-entrypoint-initdb.d/V1_20260323_create_functions_triggers.sql

-- Módulo 2.
\i /docker-entrypoint-initdb.d/V1_20260323_alter_tables.sql
\i /docker-entrypoint-initdb.d/V1_20260323_create_index.sql

-- Módulo 3.
\i /docker-entrypoint-initdb.d/V1_20260324_vacuum_analyze.sql

-- Módulo 4.
\i /docker-entrypoint-initdb.d/V1_20260324_comment_on.sql

-- Inserciones.
\i /docker-entrypoint-initdb.d/V1_20260324_insert.sql

-- Consultas.
\i /docker-entrypoint-initdb.d/V1_20260324_select.sql