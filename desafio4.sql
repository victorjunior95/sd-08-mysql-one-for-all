CREATE VIEW SpotifyClone.top_3_artistas AS
(SELECT A.name AS artista, COUNT(*) AS seguidores FROM SpotifyClone.following AS F
INNER JOIN SpotifyClone.artist AS A ON F.artist_id = A.artist_id
GROUP BY A.name ORDER BY seguidores DESC, A.name ASC LIMIT 3);
