-- CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT a.artista AS artista, al.album AS album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone._artistas AS a
INNER JOIN SpotifyClone._albums as al on al.artista_id = a.artista_id
INNER JOIN SpotifyClone._seguindo AS s ON s.artista_id = al.artista_id
GROUP BY album_id ORDER BY  seguidores DESC;
