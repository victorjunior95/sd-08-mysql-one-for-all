DELIMITER $$
create procedure albuns_do_artista(in inArtista varchar(240))
begin
select concat(ar.nome, ' ', ar.sobrenome) as artista, al.titulo as album from SpotifyClone.artistas ar
inner join SpotifyClone.albuns al on ar.artista_id = al.artista_id
where concat(ar.nome, ' ', ar.sobrenome) = inArtista
order by album;
end $$
DELIMITER ;
