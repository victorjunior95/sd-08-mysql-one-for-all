-- DESAFIO 5
CREATE VIEW top_2_hits_do_momento AS
SELECT
tbM.musica_nome AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.musica AS tbM
INNER JOIN SpotifyClone.historico AS tbH
ON tbM.musica_id = tbH.musica_id
GROUP BY tbM.musica_nome
ORDER BY COUNT(*) DESC, tbM.musica_nome
LIMIT 2;
