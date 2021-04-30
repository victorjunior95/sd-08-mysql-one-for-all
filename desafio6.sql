CREATE VIEW faturamento_atual AS
SELECT CAST(MIN(p.Valor) AS DECIMAL(10,2)) AS `faturamento_minimo`,
CAST(MAX(p.Valor) AS CHAR) AS `faturamento_maximo`,
CAST(ROUND((SUM(p.Valor) / COUNT(s.idUser)),2) AS DECIMAL(10,2)) AS `faturamento_medio`,
CAST(ROUND(SUM(p.Valor),2) AS CHAR) AS `faturamento_total`
FROM Planos p
INNER JOIN Users s
ON s.idPlano = p.idPlano;
