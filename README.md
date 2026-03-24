# Actividad - Sistema de Reporte de Fallos UJI

Diseño e implementación de una base de datos relacional para gestionar el reporte de fallos de pizarras electrónicas, automatizando cambios de estado mediante triggers.

---

### Integrantes
* Jaime Enrique Serrano Granados - SG20010
* Karla Patricia Orellana Hidalgo - OH20003

---

### Estructura de Scripts SQL
| Archivo | Descripción |
| :--- | :--- |
| `main.sql` | Punto de entrada único que llama a todos los demás scripts en el orden correcto. |
| `V1_20260323_create_tables.sql` | Crea las tablas principales del sistema. |
| `V1_20260323_create_functions_triggers.sql` | Crea las funciones PL/pgSQL y los triggers. |
| `V1_20260323_alter_tables.sql` | Realiza modificaciones a las estructuras de las tablas. |
| `V1_20260323_create_index.sql` | Crea índices en las tablas para optimizar la velocidad de las consultas. |
| `V1_20260324_vacuum_analyze.sql` | Ejecuta tareas de mantenimiento (`VACUUM ANALYZE`) en la base de datos. |
| `V1_20260324_comment_on.sql` | Agrega metadatos y comentarios descriptivos al esquema de la base de datos. |
| `V1_20260324_insert.sql` | Inserta los registros y datos de prueba iniciales en las tablas. |
| `V1_20260324_select.sql` | Contiene consultas de prueba para validar el correcto funcionamiento del sistema. |

---

### Ejecución del Proyecto
Para aplicar los scripts en la base de datos corriendo en Docker, se debe ejecutar el siguiente comando en la terminal, en la raíz del proyecto:

```bash
docker exec -it postgres17 psql -U postgres -d db_reporte_fallos -f /docker-entrypoint-initdb.d/main.sql
```