CREATE VIEW cancoes_premium AS
SELECT
S.song_name AS "nome",
COUNT(H.user_id) AS "reproducoes"
FROM
SpotifyClone.songs AS S
INNER JOIN SpotifyClone.historic AS A ON S.song_id = H.song_id
INNER JOIN SpotifyClone.users AS U ON U.user_id = H.user_id
WHERE U.plan_id IN (2, 3)
GROUP BY S.song_name
ORDER BY S.song_name;
