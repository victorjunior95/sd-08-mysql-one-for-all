CREATE VIEW top_2_hits_do_momento AS
SELECT CAN.Nome AS cancao,
COUNT(HIS.Cancao_id) AS reproducoes
FROM SpotifyClone.Cancao AS CAN
INNER JOIN SpotifyClone.Historico_Musica_Usuario AS HIS ON CAN.Cancao_id = HIS.Cancao_id
GROUP BY `cancao`
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
