CREATE VIEW faturamento_minimo AS
SELECT MIN(price) AS faturamento_minimo,
MAX(price) AS faturamento_maximo,
ROUND(AVG(price), 2) AS faturamento_medio,
SUM(price) AS faturamento_total
FROM SpotifyClone.Subscription AS s
INNER JOIN Spotify_User AS u
ON s.subscription_id = u.subscription_id;
