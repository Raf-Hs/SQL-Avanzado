--Seleccionar el id_album, titulo del album,titulo de la cancion y duracion de la cancion

select a.id_album,a.titulo,c.titulo,c.duracion
from album a Left JOIN cancion c 
on a.id_album = c. id_album;


/*
Explicación como para un niño:

    LEFT JOIN es como mirar una lista de álbumes (tabla "album") y buscar si cada álbum tiene canciones en otra lista (tabla "cancion").
    Si un álbum tiene canciones, las mostramos junto al álbum.
    Si un álbum no tiene canciones, decimos "no hay canciones" (o NULL).
*/