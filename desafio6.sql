CREATE VIEW faturamento_atual AS
    SELECT
        FORMAT(MIN(p.valor), 2) AS 'faturamento_minimo', 
        FORMAT(MAX(p.valor), 2) 'faturamento_maximo', 
        FORMAT(AVG(p.valor), 2)'faturamento_medio', 
        FORMAT(SUM(p.valor), 2) 'faturamento_total'
    FROM SpotifyClone.Planos AS p
    INNER JOIN SpotifyClone.Usuarios AS u
    ON u.plano_id = p.plano_id;