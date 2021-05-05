drop database if exists SpotifyClone;
create database SpotifyClone;
use SpotifyClone;


create table planos (
plano_id int primary key auto_increment,
plano_nome varchar(100) not null,
valor decimal(5, 2) not null
) engine=InnoDB;

create table usuarios (
usuario_id int primary key auto_increment,
nome varchar(200) not null,
idade int not null,
plano_id int not null,
foreign key (plano_id) references planos(plano_id)
) engine=InnoDB;

create table artistas (
artista_id int primary key auto_increment,
nome varchar(50) not null,
sobrenome varchar(200) not null
) engine=InnoDB;

create table albuns (
album_id int primary key auto_increment,
titulo varchar(200) not null,
artista_id int not null,
foreign key (artista_id) references artistas(artista_id)
) engine=InnoDB;

create table musicas (
musica_id int primary key auto_increment,
musica varchar(100) not null,
album_id int not null,
foreign key (album_id) references albuns(album_id)
) engine=InnoDB;

create table historico_reproducoes (
usuario_id int not null,
musica_id int not null,
foreign key (usuario_id) references usuarios(usuario_id),
foreign key (musica_id) references musicas(musica_id),
primary key (usuario_id, musica_id)
) engine=InnoDB;

create table seguidores (
artista_id int not null,
usuario_id int not null,
foreign key (artista_id) references artistas(artista_id),
foreign key (usuario_id) references usuarios(usuario_id),
primary key (artista_id, usuario_id)
) engine=InnoDB;

insert into planos (plano_nome, valor)
values ('gratuito', '00.00'), ('familiar', '07.99'), ('universitário', '05.99');

insert into usuarios (nome, idade, plano_id)
values ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

insert into artistas (nome, sobrenome)
values ('Walter', 'Phoenix'), ('Peter', 'Strong'), ('Lance', 'Day'), ('Freedie', 'Shannon');

insert into albuns (titulo, artista_id)
values ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

insert into musicas (musica, album_id)
values ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), 
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2), ('Magic Circus', 3), ('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3), ('She Knows', 3), ('Fantasy For Me', 4), ('Celebration Of More', 4),
('Rock His Everything', 4), ('Home Forever', 4), ('Diamond Power', 4), ("Honey, Let's Be Silly", 4), 
('Thang Of Thunder', 5), ('Words Of Her Life', 5), ('Without My Streets', 5);

insert into historico_reproducoes (usuario_id, musica_id)
values (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6),
(4, 3), (4, 18), (4, 11);

insert into seguidores (artista_id, usuario_id)
values (1, 1), (1, 2), (1, 3), (2, 3), (3, 1), (3, 2), (4, 1), (4, 4);
