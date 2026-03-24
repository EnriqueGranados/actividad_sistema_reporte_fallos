-- =======================================================================
-- Módulo 3: Mantenimiento Rutinario y Salud de la Base de Datos.
-- =======================================================================

VACUUM ANALYZE reportes_fallos;

/*
Justificación

Se utiliza VACUUM para realizar una limpieza de espacio reclamando el espacio físico que 
dejan los registros obsoletos (las "tuplas muertas"). Esto es vital para evitar el 
crecimiento innecesario de los ficheros de datos en el disco.

La combinación con ANALYZE permite ejecutar una actualización simultánea de las 
estadísticas. Esto renueva los metadatos de distribución de datos que utiliza el optimizador, 
lo que permite que el planificador pueda seguir eligiendo la ruta de acceso más eficiente a 
lo largo del tiempo.
*/