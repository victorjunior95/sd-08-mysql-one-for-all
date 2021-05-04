CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario,
  M.musica_nome AS nome
FROM SpotifyClone.usuarios AS U
  INNER JOIN SpotifyClone.reproducoes AS R ON U.id = R.usuario_id
  INNER JOIN SpotifyClone.musicas AS M ON M.id = R.musica_id
ORDER BY U.usuario_nome,
  M.musica_nome;
