-- CREATE VIEW cancoes_premium AS

SELECT
c.nome_cancao AS `nome`,
COUNT(hp.usuario_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.cancoes AS c
ON hp.cancao_id = c.cancao_id
GROUP BY `nome`
ORDER BY `nome`;

SELECT
c.nome_cancao AS `nome`,
COUNT(hp.usuario_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.cancoes AS c
ON hp.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON hp.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE p.plano = 'familiar' OR p.plano = 'universitário';
