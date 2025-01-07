--Desplegar titulo original de la pelicula y todos los campos de la tabla trabaja
select p.titulo_original,t.* 
from pelicula p INNER JOIN  trabaja t
on p.identificador = t.identificador;

--Seleccionar el id_artista, su alias y el titulo de la cancion de todos los artistas
select ar.id_artista, ar.alias, ca.titulo
from artista ar Inner Join album al
on ar.id_artista = al.id_artista
inner join cancion ca
on al.id_album = ca.id_album;

--Desplegar el genero, pais de origen, titulo original con el codigo de empleado y el nombre de personaje que
--trabajaron en peliculas, donde su clasificacion sea "Mayor a 15 anios"

select p.titulo_original,p.genero,p.pais_origen,codigo_emp,tr.nombre_personaje
from pelicula p Inner Join trabaja tr
on p.identificador = tr.identificador
and clasificacion = "Mayor a 15 años"


--Faltarian procedimientos almacenados, triggers y vistas