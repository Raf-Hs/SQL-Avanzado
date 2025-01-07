--In
use bd_peliculas;
select * from director
where id in (4,7,10);

--Not in
use bd_peliculas;
select * from director
where id not in (4,7,10);

--Between
use bd_peliculas;
select * from director
where id Between 4 and 10;

--Not Between
use bd_peliculas;
select * from director
where id not Between 4 and 10;

--Like
use bd_peliculas;
select * from director
where nombre like 'G%';
--where nombre like '%e';
--where nombre like '%ss%';
--where nombre like '___';

--Respuesta a la pregunta del video: 2,5,7,8,9,11
