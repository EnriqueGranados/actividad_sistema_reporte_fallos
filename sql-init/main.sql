-- =======================================================================
-- Inicialización (MAIN).
-- =======================================================================

\i /docker-entrypoint-initdb.d/V1_20260323_create_tables.sql
\i /docker-entrypoint-initdb.d/V1_20260323_create_functions_triggers.sql
\i /docker-entrypoint-initdb.d/V1_20260323_alter_tables.sql
\i /docker-entrypoint-initdb.d/V1_20260323_create_index.sql
\i /docker-entrypoint-initdb.d/V1_20260324_vacuum_analyze.sql
\i /docker-entrypoint-initdb.d/V1_20260324_comment_on.sql