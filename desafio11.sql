CREATE VIEW cancoes_premium AS
SELECT song_name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.my_playlist AS MP
INNER JOIN SpotifyClone.song AS S
ON MP.song_id = S.song_id
INNER JOIN SpotifyClone.user AS U
ON MP.user_id = U.user_id
WHERE U.plan_ID IN(2,3)
GROUP BY nome
ORDER BY nome;
