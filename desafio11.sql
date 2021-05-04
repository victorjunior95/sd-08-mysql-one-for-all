CREATE VIEW cancoes_premium AS
SELECT M.musica_nome AS nome,
  COUNT(R.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS M
  INNER JOIN SpotifyClone.reproducoes AS R ON M.id = R.musica_id
  INNER JOIN SpotifyClone.usuarios AS U ON U.id = R.usuario_id
WHERE U.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
