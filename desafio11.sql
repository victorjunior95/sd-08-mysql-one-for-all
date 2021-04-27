CREATE VIEW cancoes_premium AS 
SELECT
  M.musica_nome AS 'nome',
  COUNT(*) as 'reproducoes'
FROM SpotifyClone.Musicas M
INNER JOIN SpotifyClone.Historico H
ON H.musica_id = M.musica_id
INNER JOIN SpotifyClone.Usuario U
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.Planos P
ON P.planos_id = U.planos_id
WHERE P.plano_nome = 'familiar' OR P.plano_nome = 'universitario'
GROUP BY `nome`
ORDER BY `nome`;
