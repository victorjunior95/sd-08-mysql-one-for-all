CREATE OR REPLACE VIEW cancoes_premium AS
SELECT s.title AS `nome`,
COUNT(rh.user_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproductions_history AS rh
ON rh.song_id = s.song_id
INNER JOIN SpotifyClone.plans AS p
ON p.plan_id = rh.user_id
WHERE p.plan_type IN ('familiar', 'universitario')
GROUP BY `nome`
ORDER BY `nome`;

