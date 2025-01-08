--Concat
use bd_peliculas;
select a.id,
    concat(a.nombre,'',a.apellido) as Nombres,
    from actor as a;

--Funciones Matematicas
use bd_peliculas;
select p.id,
    sin(p.calificacion) as seno,
    cos(p.calificacion) as coseno,
    tan(p.calificacion) as tangente,
from pelicula as p;

--Suma, resta, multiplicacion y division
use bd_peliculas;
select p.id,
    (p.duracion/60) as duracion_horas,
    p.duracion as duracion_min,
    (p.duracion * 60) as duracion_seg
    from peliculas as p;

--Truncate, Round
--Truncate corta exacto el numero de decimales que le indiquemos
--Round redondea el numero de decimales que le indiquemos 
use bd_peliculas;
select p.id,
    Truncate(tan(p.calificacion),2) as tangente_corta,
    Round(tan(p.calificacion),2) as tangente_round,
    from peliculas as p;