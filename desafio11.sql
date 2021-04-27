CREATE VIEW cancoes_premium AS
SELECT canc.nome AS nome, 
COUNT(hist.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS canc
INNER JOIN SpotifyClone.historico_reproducoes AS hist ON hist.cancao_id = canc.cancao_id
INNER JOIN SpotifyClone.usuarios AS usu ON usu.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.planos AS plan ON plan.plano_id = usu.plano_id AND (plan.tipo IN('familiar', 'universitario'))
GROUP BY nome
ORDER BY nome;