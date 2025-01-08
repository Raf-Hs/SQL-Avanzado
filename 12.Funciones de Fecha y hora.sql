-- Son utiles a la hora de realizar inserts o updates
Select CURDATE() as fecha,
CURTIME() as hora,
NOW () as completa;

--Date add permite sumar dias, meses o años a una fecha

Select DATE_ADD(CURDATE(),INTERVAL 45 MONTH) as proxima_fecha;

Select DATE_ADD('2000-10-10',INTERVAL 45 MONTH) as proxima_fecha;

USE bd_peliculas;
select p.id,
    p.fechaCreacion,
    DATE_ADD(p.fechaCreacion,INTERVAL 45 day) as proxima_fecha
FROM pelicula as p;

--Date add tambien permite restar dias, meses o años a una fecha

USE bd_peliculas;
select p.id,
    p.fechaCreacion,
    DATE_ADD(p.fechaCreacion,INTERVAL -45 day) as proxima_fecha
FROM pelicula as p;

--Date Diff permite restar dos fechas y obtener la diferencia en dias
USE bd_peliculas;
select p.id,
    p.fechaEstreno,
    Now() as hoy,
    DATEDIFF(Now(),p.fechaEstreno) as dias
FROM pelicula as p;

--Funciones de Extraccion

USE bd_peliculas;
select p.id,
    p.fechaEstreno,
    YEAR(p.fechaEstreno) as anioEstreno,
    MONTH(p.fechaEstreno) as mesEstreno,
    DAY(p.fechaEstreno) as diaEstreno,
    NOW() as hoy,
    HOUR(NOW()) as horaHoy,
    MINUTE(NOW()) as minutosHoy,
    SECOND(NOW()) as segundosHoy
FROM pelicula as p;

--Los campost de tipo fecha son relevantes y fundamentales para control

--Funciones de extraccion
USE bd_peliculas;
select p.id,
    p.fechaEstreno,
    DAYNAME(p.fechaEstreno) as nombreDia,
    DAYOFWEEK(p.fechaEstreno) as diasSemana,
    DAYOFYEAR(p.fechaEstreno) as diasAnio,
    MONTHNAME(p.fechaEstreno) as nombreMes
    LAST_DAY(p.fechaEstreno) as ultimoDiaMes
FROM pelicula as p;
