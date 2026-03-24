-- =======================================================================
-- Módulo 4: Documentación y Metadatos.
-- =======================================================================

-- Comentario para la tabla tecnicos.
COMMENT ON TABLE tecnicos IS 'Tabla que centraliza el registro de los técnicos asignados en el Sistema de Reporte de Fallos de la UJI a las incidencias de hardware. Esta tabla mantiene una regla de integridad referencial de anulación (ON DELETE SET NULL) con los reportes de fallos, garantizando que el historial de incidencias persista para su reasignación en caso de que un técnico sea dado de baja'; 

-- Comentario para la columna estado de la tabla pizarra.
COMMENT ON COLUMN pizarras.estado IS 'Atributo que define la disponibilidad operativa actual de la pizarra electrónica en el aula. Su dominio está estrictamente restringido mediante una cláusula CHECK a tres valores permitidos: "Operativa", "En Reparación" o "Fuera de Servicio". Este valor es gestionado de forma dinámica y automatizada por el motor de base de datos, cambia inmediatamente a "En Reparación" mediante un trigger cada vez que se inserta un nuevo reporte de fallo asociado a este activo.';