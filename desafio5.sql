CREATE VIEW top_2_hits_do_momento AS
SELECT
cancoes.titulo_cancao AS `cancao`,
COUNT(historico.id_cancao) AS `reproducoes`
FROM SpotifyClone.Cancoes AS cancoes
INNER JOIN SpotifyClone.HistoricoDeReproducoes AS historico
ON cancoes.id_cancao = historico.id_cancao
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
