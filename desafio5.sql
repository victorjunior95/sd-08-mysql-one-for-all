CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao AS cancao, COUNT(HR.cancao_id) AS reproducoes FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico_de_reproducoes AS HR
ON C.cancao_id = HR.cancao_id
GROUP BY C.cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
