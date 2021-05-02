CREATE VIEW faturamento_atual AS
SELECT 
min(p.plano_valor) faturamento_minimo,
max(p.plano_valor) faturamento_maximo,
ROUND(avg(p.plano_valor), 2) faturamento_medio,
sum(p.plano_valor) faturamento_total
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuarios u
ON p.plano_id = u.plano_id

