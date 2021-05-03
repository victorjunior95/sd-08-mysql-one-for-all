CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(Plano.Valor), 2) AS faturamento_minimo, FORMAT(MAX(Plano.Valor), 2) AS faturamento_maximo,
FORMAT(ROUND(AVG(Plano.Valor), 2), 2) AS faturamento_medio, FORMAT(SUM(Plano.Valor), 2) AS faturamento_total
FROM SpotifyClone.Plano Plano INNER JOIN SpotifyClone.Usuario Usuario ON Plano.Plano_id = Usuario.Plano_id;
