--Desplegar los empleados (Nombre y Nacionalidad) y las peliculas donde trabajaron
--(Identificador de pelicula) utilizando el producto cartesiano

select nombre_emp,nacionalidad,Identificador
from empleado,trabaja 
where empleado.codigo_emp = trabaja.codigo_emp;

--Utilizando alias por tabla
select e.nombre_emp,e.nacionalidad, t.identificador
from empleado e, trabaja t
where e.codigo_emp = t.codigo_emp;

--Desplegar el id_usuario,username,password y fecha de renovacion de la tarjeta paypal de los usuarios
--premium que pagan con paypal

select u.id_usuario,u.username,u.password,p.fecha_renovacion 
from usuario u, premium_pp p
where u.id_usuario = p.id_usuario;



/*Nota
Por definición: A = {1, 2, 3, 4} y B = { a , b }, su producto cartesiano es:
A × B = {(1, a ), (1, b ), (2, a ), (2, b ), (3, a ), (3, b ), (4, a ), (4, b )}

Es decir  un nuevo conjunto con todos los pares ordenados posibles.

En el ejemplo no estás obteniendo un producto cartesiano, lo que estás realizando es una intersección entre los elementos de la tabla "empleado" y "trabaja" a través del campo "codigo_emp", lo equivalente a usar un  Inner Join.

SI quisieras obtener el producto cartesiano sería:
SELECT nombre_emp, nacionalidad, identificador FROM empleado,trabaja
*/

