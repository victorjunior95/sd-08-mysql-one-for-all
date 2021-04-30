CREATE VIEW faturamento_atual AS
SELECT MIN(Valor) AS `faturamento_minimo`,
MAX(Valor) AS `faturamento_maximo`,
ROUND(AVG(Valor),2) AS `faturamento_medio`,
ROUND(SUM(Valor),2) AS `faturamento_total`
FROM Planos;
