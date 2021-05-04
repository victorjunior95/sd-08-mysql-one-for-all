CREATE VIEW
cancoes_premium
AS
SELECT ts.sings AS nome, COUNT(id_users) AS reproducoes
FROM SpotifyClone.table_history th
INNER JOIN SpotifyClone.table_sings ts
ON ts.id_sings = th.id_sings
WHERE id_users IN (SELECT id_users
FROM SpotifyClone.table_users
WHERE id_plans <> 1)
GROUP BY nome
ORDER BY nome;
