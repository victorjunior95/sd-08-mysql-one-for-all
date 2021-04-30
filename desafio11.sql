CREATE VIEW cancoes_premium AS
SELECT sc.cancao AS 'nome', COUNT(shr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS sc
INNER JOIN SpotifyClone.historico_de_reproducoes AS shr
ON sc.cancao_id = shr.cancao_id
INNER JOIN SpotifyClone.usuarios AS su
ON shr.usuario_id = su.usuario_id
INNER JOIN SpotifyClone.planos AS sp
ON su.plano_id = sp.plano_id
WHERE sp.plano IN('familiar', 'universitário')
GROUP BY `nome`
ORDER BY `nome` ASC;
