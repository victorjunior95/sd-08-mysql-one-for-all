CREATE VIEW faturamento_atual AS
SELECT 
( SELECT ROUND(MIN(valorPlano),2) FROM SpotifyClone.Planos )  AS 'faturamento_minimo', 
( SELECT ROUND(MAX(valorPlano),2) FROM SpotifyClone.Planos )  AS 'faturamento_maximo', 
( SELECT ROUND(AVG(valorPlano),2) FROM SpotifyClone.Planos )  AS 'faturamento_medio', 
( SELECT ROUND(SUM(valorPlano),2) FROM SpotifyClone.Planos )  AS 'faturamento_total';
 