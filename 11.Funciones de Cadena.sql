--Concat
use bd_peliculas;
select p.id,
    CONCAT(a.nombre,'',a.apellido) as nombres
from actor as a;

--INSTR, permite buscar dentro de un texto
use bd_peliculas;
select p.id,
    p.sinopsis
    INSTR(p.sinopsis,'historia') as dato
from pelicula as p;

--Lenght


--Lower & Upper
use bd_peliculas;
select d.id,
    CONCAT(d.nombre,'',d.apellido) as nombres,
    LOWER(CONCAT(d.nombre,'',d.apellido)) as minusculas
    UPPER(CONCAT(d.nombre,'',d.apellido)) as mayusculas
from director as d;

--Replace
use bd_peliculas;
select p.id,
    REPLACE (p.sinopsis,'muerte','******') as sinopsis
from pelicula as p;

--Lpad & Rpad
use bd_peliculas;
select p.id,
    RPAD(CONCAT(d.nombre,'',d.apellido),30,'-') as director,
    RPAD(p.sinopsis,80,'-') as sinopsis,
    LPAD(p.duracion,20,'0') as duracion
    from pelicula as p
    INNER JOIN director as d ON d.id = p.director_id;
