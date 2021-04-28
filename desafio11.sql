CREATE VIEW cancoes_premium AS
SELECT C.cancao AS nome,
COUNT(HR.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico_de_reproducoes AS HR
ON HR.cancao_id = C.cancao_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = HR.usuario_id
WHERE U.plano_id IN (2,3)
GROUP BY C.cancao
ORDER BY nome;
