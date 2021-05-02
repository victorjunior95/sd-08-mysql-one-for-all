CREATE VIEW faturamento_atual AS SELECT 
MIN(pl.valor_plano) faturamento_minimo,
MAX(pl.valor_plano) faturamento_maximo,
ROUND(AVG(pl.valor_plano), 2) faturamento_medio,
SUM(pl.valor_plano) faturamento_total
FROM SpotifyClone.plano pl
JOIN SpotifyClone.usuario usu ON usu.plano_id = pl.plano_id;
