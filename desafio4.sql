CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.artista AS artista, count(u.artista_id) AS seguidores
FROM SpotifyClone._artistas AS a
inner join SpotifyClone._seguindo AS u on a.artista_id = u.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;
