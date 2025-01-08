--Null
use bd_ejemplo;
INSERT INTO pelicula(
    sinopsis,
    fechaEstreno,
    codigoPais,
    duracion,
    calificacion,
    DIRECTOR_id,
    clasificacion,
    DIRECTOR_id,
    clasificacion,
    fechaCreacion,
    fechaModificacion
)
VALUES(
    'Sinopsis de ejemplo...',
    '2002-01-10',
    'USA',
    NULL,
    3.5
    1,
    'GENERAL',
    NOW(),
    NOW()
);

--Consulta
--Tener cuidado por que puede generar errores con null
use bd_ejemplo;
select p.id,
    p.fechaEstreno,
    p.codigoPais,
    CONCAT(p.duracion,'', 'minutos') as duracion,
    p.clasificacion
FROM pelicula as p;

use bd_ejemplo;
select * 
FROM peliculas as p
WHERE clasificacion NOT IN ('General');

--Solucion: IFNULL
use bd_ejemplo;
select p.id,
p.fechaEstreno,
p.codigoPais,
IFNULL(p.duracion,0) as duracion,
IFNULL(p.clasificacion,'Deconocido') as clasificacion
from pelicula as p;

--Solucion con IFNULL
use bd_ejemplo;
select * 
FROM peliculas as p
WHERE IFNULL(clasificacion,'Desconocido') NOT IN ('General');