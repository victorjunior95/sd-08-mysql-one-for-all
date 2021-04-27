CREATE VIEW SpotifyClone.cancoes_premium AS
(SELECT S.title AS nome, COUNT(RH.song_id) AS reproducoes
FROM SpotifyClone.reproductions_history AS RH
INNER JOIN SpotifyClone.songs AS S ON RH.song_id = S.song_id
INNER JOIN SpotifyClone.user AS U ON RH.user_id = U.user_id
WHERE U.plan_id IN (2, 3) GROUP BY S.title ORDER BY nome);
