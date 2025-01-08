--if
--Estrctura if(condición, resultado V, resultado F)
use bd_peliculas;
select p.ida,
p.fechaEstreno,
p.codigoPais,
p.calificacion,
if(p.calificacion > 3.5,'Buena','Mala') as valor
from pelicula as p;

--Case
--Nota. Importante que se ejecutan en orden por lo que si la logica es incorrecta no se obtendran los resultados esperados
use bd_peliculas;
select p.id,
    p.fechaEstreno,
    p.codigoPais,
    p.calificacion,
    CASE 
        when p.calificacion > 3.5 then 'Buena'
        when p.calificacion < 3.5 then 'Mala'
        else 'Excelente'
    END as valor
FROm pelicula as p;

--
Use bd_peliculas;
select p.id,
p.fechaEstreno,
DAYNAME (p.fechaEstreno) as nombreDia
from pelicula as p;

--

use bd_peliculas;
select p.id,
p.fechaEstreno,
    CASE DAYNAME (p.fechaEstreno)
        when  "Monday" then 'Lunes'
        when  "Tuesday" then 'Martes'
        when  "Wednesday" then 'Miercoles'
        when  "Thursday" then 'Jueves'
        when  "Friday" then 'Viernes'
        when  "Saturday" then 'Sabado'
        else 'Domigo'
    END as valor
FROm pelicula as p;