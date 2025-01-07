--Otorga un nombre especifico a la consulta
select count(*) as mis_canciones from musica_rock;

-- Obtener la cantidad de canciones pop por album y colocar un alias
select *, count(titulo) as numero de canciones from musica_pop Group by album;