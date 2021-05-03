CREATE VIEW
perfil_artistas
AS
SELECT
ts.stars AS artista,
ta.albuns AS album,
count(tf.id_stars) AS seguidores
FROM SpotifyClone.table_stars ts
INNER JOIN SpotifyClone.table_albuns ta
ON ta.id_stars = ts.id_stars
INNER JOIN SpotifyClone.table_follow_stars tf
ON tf.id_stars = ta.id_stars
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
