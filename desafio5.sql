CREATE VIEW top_2_hits_do_momento AS
SELECT 
  M.musicaNome AS 'cancao',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Historico AS H
INNER JOIN SpotifyClone.Musicas AS M
ON H.musica_id = M.musica_id
GROUP BY H.musica_id
ORDER BY `reproducoes` desc, `cancao`
LIMIT 2;
