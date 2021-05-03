CREATE VIEW
top_2_hits_do_momento
AS
SELECT
(SELECT sings FROM SpotifyClone.table_sings ts
  WHERE ts.id_sings = th.id_sings) AS cancoes,
COUNT((SELECT users FROM SpotifyClone.table_users tu
  WHERE tu.id_users = th.id_users)) AS reproducoes
FROM SpotifyClone.table_history th
GROUP BY cancoes
ORDER BY reproducoes DESC, cancoes
LIMIT 2;
