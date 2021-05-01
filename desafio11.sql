CREATE VIEW cancoes_premium AS
SELECT  Sub.ca as nome, COUNT(Sub.us) AS reproducoes
FROM(
SELECT P.plano AS pl, U.usuario AS us, C.cancao AS ca
FROM SpotifyClone.Planos AS P
INNER JOIN SpotifyClone.Usuarios AS U
ON P.plano_id = U.plano_id
INNER JOIN SpotifyClone.Historico AS H
ON U.usuario_id = H.usuario_id 
INNER JOIN SpotifyClone.Cancoes AS C
ON H.cancao_id = C.cancao_id
WHERE plano <> 'gratuito') AS Sub
GROUP BY Sub.ca
ORDER BY 1;
