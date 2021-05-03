USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_do_artista varchar(40))

BEGIN 
select ar.artista_nome AS artista, a.album_nome AS album from SpotifyClone.albuns a
inner join SpotifyClone.artistas ar on a.artista_id=ar.artista_id
where artista_nome = nome_do_artista
ORDER BY album;

end $$

DELIMITER ;
