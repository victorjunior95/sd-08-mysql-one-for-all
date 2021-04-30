CREATE VIEW cancoes_premium AS
SELECT C.NOME_CANCAO AS nome,
COUNT(UC.CANCAO_ID) AS reproducoes
FROM SpotifyClone.CANCOES AS C
INNER JOIN SpotifyClone.USUARIO_CANCOES AS UC ON C.CANCAO_ID = UC.CANCAO_ID
GROUP BY C.NOME_CANCAO
ORDER BY C.NOME_CANCAO;
