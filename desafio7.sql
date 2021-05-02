CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT 
art.artista_nome artista,
alb.album_nome album,
COUNT(*) seguidores
FROM
SpotifyClone.artistas art, 
SpotifyClone.albuns alb, 
SpotifyClone.seguidores seg
WHERE
art.artista_id = alb.artista_id AND
seg.artista_id = art.artista_id
GROUP BY `artista`, `album`
ORDER BY seguidores DESC, `artista`, `album`
