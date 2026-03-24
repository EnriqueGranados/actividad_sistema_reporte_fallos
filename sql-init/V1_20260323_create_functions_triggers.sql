-- =======================================================================
-- Módulo 1: Automatización mediante Triggers y PL/pgSQL.
-- =======================================================================

--Función para actualizar el estado de la pizarra.
CREATE OR REPLACE FUNCTION fn_actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras
    SET estado = 'En Reparación' 
    WHERE id_pizarra = NEW.id_pizarra;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger asociado a la función de tipo AFTER INSERT.
CREATE TRIGGER trg_cambio_estado_pizarra
AFTER INSERT ON reportes_fallos 
FOR EACH ROW 
EXECUTE FUNCTION fn_actualizar_estado_pizarra();

/*
Justificación Técnica

FOR EACH ROW: Es estrictamente necesario para garantizar que si 
una sola transacción inserta múltiples registros de fallos 
simultáneamente, la función se ejecute de manera individual 
para evaluar y actualizar el estado de cada pizarra específica 
afectada.

Timing AFTER: Es preferible utilizar AFTER para asegurar que el 
nuevo reporte de fallo ha pasado todas las validaciones e 
inserciones en su propia tabla antes de propagar el cambio de 
estado a la tabla de activos, es decir, solo cuando ese 
reporte ya es oficial, le cambiamos el estado a la pizarra.
*/