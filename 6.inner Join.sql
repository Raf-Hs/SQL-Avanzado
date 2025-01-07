--Desplegar los emppleados (Nombre y nacionalidad) y las peliculas donde trabajaron 
--(Identificador de pelicula) utilizando inner join

select e.nombre_empm e.nacionalidad, t.identificador
from epleado e INNER JOIN trabaja t 
on e.codigo_emp = t.codigo_emp;


--Desplegar el id_usuario,username,password y fecha de renovacion de la tarjeta paypal de los usuarios
--premium que pagan con paypal

select u.id_usuario,u.username,u.password,p.fecha_renovacion 
from  premium_tc p INNER JOIN usuario u
on p.id_usuario = u.id_usuario;