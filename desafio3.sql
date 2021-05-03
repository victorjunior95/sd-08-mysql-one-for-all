CREATE VIEW
historico_reproducao_usuarios
AS
SELECT
(SELECT users FROM SpotifyClone.table_users tu
  WHERE tu.id_users = th.id_users) AS usuario,
(SELECT sings FROM SpotifyClone.table_sings ts
  WHERE ts.id_sings = th.id_sings) AS nome
FROM SpotifyClone.table_history th
ORDER BY usuario, nome;