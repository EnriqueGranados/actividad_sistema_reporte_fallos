-- =======================================================================
-- Consultas.
-- =======================================================================

-- Ver pizarras y sus estados.
SELECT * FROM pizarras;

-- Ver incidentes completos.
SELECT 
    r.id_reporte, 
    r.fecha, 
    p.ubicacion, 
    r.descripcion AS problema_reportado,
    t.nombre AS tecnico_asignado, 
    r.nivel_prioridad
FROM reportes_fallos r
LEFT JOIN pizarras p ON r.id_pizarra = p.id_pizarra
LEFT JOIN tecnicos t ON r.id_tecnico = t.id_tecnico;