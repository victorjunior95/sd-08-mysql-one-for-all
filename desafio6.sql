CREATE VIEW SpotifyClone.faturamento_atual AS
(SELECT ROUND(MIN(P.price), 2) AS faturamento_minimo, ROUND(MAX(P.price), 2) AS faturamento_maximo,
ROUND((SELECT AVG(P.price)
FROM SpotifyClone.user AS U 
INNER JOIN SpotifyClone.plan AS P ON U.plan_id = P.plan_id), 2) AS faturamento_medio,
ROUND((SELECT SUM(P.price)
FROM SpotifyClone.user AS U 
INNER JOIN SpotifyClone.plan AS P ON U.plan_id = P.plan_id), 2) AS faturamento_total
FROM SpotifyClone.user AS U 
INNER JOIN SpotifyClone.plan AS P ON U.plan_id = P.plan_id); 
