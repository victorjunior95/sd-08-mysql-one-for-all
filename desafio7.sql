CREATE VIEW perfil_artistas AS
SELECT
art.artista AS 'artista',
album.album AS 'album',
COUNT(seguindo.artista_id) AS 'seguidores'
FROM SpotifyClone.Artista AS art
INNER JOIN SpotifyClone.Album AS album
ON album.artista_id = art.artista_id
INNER JOIN SpotifyClone.Seguindo AS seguindo
ON seguindo.artista_id = art.artista_id
GROUP BY album.album_id
ORDER BY 3 DESC, 1, 2; 
