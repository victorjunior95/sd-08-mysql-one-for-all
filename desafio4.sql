create view top_3_artistas as
select concat(a.nome, ' ', a.sobrenome) as `artista`, count(s.usuario_id) as `seguidores` from SpotifyClone.artistas a
inner join SpotifyClone.seguidores s on a.artista_id = s.artista_id
group by `artista` order by `seguidores` desc, `artista` asc limit 3;
