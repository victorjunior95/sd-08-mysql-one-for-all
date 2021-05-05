create view perfil_artistas as 
select concat(ar.nome, ' ', ar.sobrenome) as artista, al.titulo as album, count(s.artista_id) as seguidores
from SpotifyClone.artistas ar inner join SpotifyClone.albuns al on ar.artista_id = al.artista_id
inner join SpotifyClone.seguidores s on ar.artista_id = s.artista_id
group by artista, album
order by seguidores desc, artista asc, album asc;
