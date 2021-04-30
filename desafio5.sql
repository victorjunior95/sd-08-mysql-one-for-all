CREATE VIEW top_2_hits_do_momento AS
SELECT
C.cancao AS cancao,
COUNT(U.usuario) AS reproducoes
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.Historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.Cancoes As C
ON H.cancao_id = C.cancao_id
GROUP BY cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
