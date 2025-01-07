create database itunes;

create table musica_rock(
    cod_music varchar(6) primary key,
    titulo varchar(40) not null,
    artista varchar(30) not null,
    album varchar(40) not null
);

create table musica_pop(
    cod_music varchar(6) primary key,
    titulo varchar(40) not null,
    artista varchar(30) not null,
    album varchar(40) not null
);

insert into musica_rock values ('mr001', 'Psychosocial', 'Slipknot', 'All Hope Is Gone');
insert into musica_rock values ('mr002', 'In the End', 'Linkin Park', 'Hybrid Theory');
insert into musica_rock values ('mr003', 'Welcome To The Jungle', 'Guns N Roses', 'Appetite for Destruction');
insert into musica_rock values ('mr004', 'Battery', 'Metallica', 'Master of Puppets');
insert into musica_rock values ('mr005', 'Whole Lotta Love', 'Led Zeppelin', 'Led Zeppelin II');
insert into musica_rock values ('mr006', 'Panama', 'Van Halen', '1984s');

insert into musica_pop values ('mp001', 'Billie Jean', 'Michael Jackson', 'Thriller');
insert into musica_pop values ('mp002', 'Look What You Made Me Do', 'Taylor Swift', 'Reputation');
insert into musica_pop values ('mp003', 'I Feel It Coming', 'The Weeknd', 'Starboy');
insert into musica_pop values ('mp004', 'Love You Like a Love Song', 'Selena Gomez', 'When the Sun Goes Down');
insert into musica_pop values ('mp005', 'Poker Face', 'Lady Gaga', 'The Fame');
insert into musica_pop values ('mp006', 'Boyfriend', 'Justin Bieber', 'Believe');
