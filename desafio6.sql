CREATE VIEW faturamento_atual AS
SELECT MIN(Plano.Valor) AS faturamento_minimo, MAX(Plano.Valor) AS faturamento_maximo,
ROUND(AVG(Plano.Valor), 2) AS faturamento_medio, SUM(Plano.Valor) AS faturamento_total
FROM SpotifyClone.Plano Plano INNER JOIN SpotifyClone.Usuario Usuario ON Plano.Plano_id = Usuario.Plano_id;
