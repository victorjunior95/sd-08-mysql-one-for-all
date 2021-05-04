CREATE VIEW cancoes_premium AS 
SELECT cancao AS nome, COUNT(*) AS `reproducoes` 
FROM SpotifyClone.Cancoes AS c
INNER JOIN SpotifyClone.Historicos AS h ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.Usuarios AS u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.Planos AS p ON p.plano_id = u.plano_id
WHERE p.plano IN ('familiar', 'universitário')
GROUP BY cancao
ORDER BY cancao;
