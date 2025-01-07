--Desplegar nombre y edad de todas las personas que tienen mayor a 35 años

SELECT Nombre,Edad from persona where edad > 35

--Desplegar Titulo original, genero y clasificacion de todas las peliculas apta todo publico

SELECT titulo_original,genero,clasificacion from pelicula where clasificacion = "apta todo publico"

--Desplegar en orden descendente por edad el nombre y edad de las personas

select nombre,edad from persona order by edad desc

--Obtener la cantidad de empleados por pais

select nacionalidad,count(*) from empleados 