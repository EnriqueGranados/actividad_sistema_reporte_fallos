-- =======================================================================
-- Módulo 1: Definición de Tablas e Integridad Referencial.
-- =======================================================================

-- Tabla pizarras.
CREATE TABLE pizarras (
    id_pizarra SERIAL PRIMARY KEY, 
    ubicacion VARCHAR(50) NOT NULL, 
    estado VARCHAR(20) CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);

-- Tabla tecnicos.
CREATE TABLE tecnicos (
    id_tecnico SERIAL PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL, 
    especialidad VARCHAR(50) NOT NULL 
);

-- Tabla reportes_fallos.
CREATE TABLE reportes_fallos (
    id_reporte SERIAL PRIMARY KEY, 
    fecha DATE NOT NULL, 
    descripcion VARCHAR(50) NOT NULL,
    id_pizarra INT,
    id_tecnico INT,
    
    CONSTRAINT fk_pizarra FOREIGN KEY (id_pizarra)
        REFERENCES pizarras (id_pizarra) ON DELETE CASCADE, 

    CONSTRAINT fk_tecnico FOREIGN KEY (id_tecnico)
        REFERENCES tecnicos (id_tecnico) ON DELETE SET NULL 
);