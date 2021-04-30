CREATE VIEW cancoes_premium AS
SELECT 
c.nome AS 'nome',
COUNT(hr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON hr.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON p.plano_id = u.id_plano
WHERE p.plano IN('familiar', 'universitário')
GROUP BY c.nome
ORDER BY `nome` ASC;
