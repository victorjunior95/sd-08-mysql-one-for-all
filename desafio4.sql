CREATE VIEW
top_3_artistas
AS
SELECT
(SELECT stars FROM SpotifyClone.table_stars ts
  WHERE ts.id_stars = tf.id_stars) AS artistas,
COUNT((SELECT users FROM SpotifyClone.table_users tu
  WHERE tu.id_users = tf.id_users)) AS seguidores
FROM SpotifyClone.table_follow_stars tf
GROUP BY artistas
ORDER BY seguidores DESC, artistas
LIMIT 3;
