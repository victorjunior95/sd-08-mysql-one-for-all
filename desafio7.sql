CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT art.artista, alb.album, COUNT(se.id_artista) AS 'seguidores'
FROM artistas AS ar
INNER JOIN albuns AS al ON art.id_artista = alb.id_artista
INNER JOIN seguindo AS se ON art.id_artista = se.id_artista
GROUP BY alb.id_album
ORDER BY `seguidores` DESC , art.artista , alb.album;
