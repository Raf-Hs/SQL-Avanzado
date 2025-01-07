--Union, deben tener el mismo numero de columnas, tipos de datos similares y en el mismo orden

--Unir la tabla de musica rock y musica pop
SELECT * FROM musica_rock
UNION
SELECT * FROM musica_pop;

--Seleccionar todas las canciones y sus autores correspondientes

SELECT titulo,artista FROM musica_rock
UNION
SELECT titulo,artista FROM musica_pop;

--Seleccionar todos los artistas con sus albumes y sus autores correspondientes

SELECT titulo,album FROM musica_rock
UNION
SELECT titulo,album FROM musica_pop;