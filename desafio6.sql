CREATE VIEW faturamento_atual AS
SELECT * FROM plano;
SELECT
ROUND(MIN(plano_valor), 2) faturamento_minimo,
ROUND(MAX(plano_valor), 2) faturamento_maximo,
ROUND(SUM(plano_valor)/4, 2) faturamento_medio,
SUM(plano_valor) faturamento_total
FROM plano;





