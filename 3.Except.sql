--Except

--Seleccionar los albumes de todos los artistas donde solo se tomaran en cuenta los albumes pop
SELECT album FROM musica_pop
EXCEPT
SELECT album FROM musica_rock;

--En algunos casos se puede utilizar la clausula NOT IN para obtener el mismo resultado

select album,artista from musica_pop
where album not in (select album from musica_rock);

--Añandemos otra tabla

create table datos_artista(
    cod_artist varchar (6) primary key,
    artista varchar(30) not null,
    disquera varchar(30) not null,
    album varchar (40) not null
);

insert into datos_artista values('art001','Link Park', 'Universal Music Group', 'Hybrid Theory');

insert into datos_artista values('art002','Guns N Roses', 'Sony Music Entertainment', 'Appetite for Destruction');

insert into datos_artista values('art003','Metalica', 'Warner Music Group', 'Master of Puppets');

insert into datos_artista values('art004','Van Halen', 'YG Entertaiment', '1984s');

insert into datos_artista values('art005','Michael Jackson', 'Universal Music Group', 'Thriller');

insert into datos_artista values('art006','Taylor Swift','Sony Music Entertainment','Reputation');

insert into datos_artista values('art007','The Weekend', 'Universal Music Group', 'Starboy');

insert into datos_artista values('art008','Selena Gomez', 'Universal Music Group', 'Whe the Sun Goes Down');

--Verificar las disqueras que trabajan con el genero rock
select artista,album from datos_artista
Except
select artista,album from musica_pop;


select disquera from datos_artista
where album not in (select album from musica_pop);
