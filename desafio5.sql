CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS 'cancao',
COUNT(uc.cancao_id) AS 'reproducoes'
FROM SpotifyClone.Cancao AS c
INNER JOIN SpotifyClone.Usuario_Cancao AS uc ON uc.cancao_id = c.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
