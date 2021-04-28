CREATE OR REPLACE VIEW faturamento_atual AS
    SELECT 
        (CAST(MIN(p.price) AS DECIMAL (5 , 2 ))) AS `faturamento_minimo`,
        (CAST(MAX(p.price) AS DECIMAL (5 , 2 ))) AS `faturamento_maximo`,
        ROUND(AVG(p.price), 2) AS `faturamento_medio`,
        (CAST(SUM(p.price) AS DECIMAL (5 , 2 ))) AS `faturamento_total`
    FROM
        SpotifyClone.plans AS p
            INNER JOIN
        SpotifyClone.users AS u ON u.plan_id = p.plan_id;

-- SELECT 
--     *
-- FROM
--     faturamento_atual;
