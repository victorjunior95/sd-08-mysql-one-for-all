CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(p.pass_value) AS faturamento_minimo,
        MAX(p.pass_value) AS faturamento_maximo,
        ROUND(AVG(p.pass_value), 2) AS faturamento_medio,
        SUM(p.pass_value) AS faturamento_total
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.pass AS p ON u.pass_id = p.pass_id;

-- Tentar algo parecido com isso para subqueries
-- SELECT 
--     COUNT(*)
-- FROM
--     SpotifyClone.historic AS h
-- GROUP BY h.user_id
-- HAVING h.user_id = (SELECT 
--         user_id
--     FROM
--         SpotifyClone.users AS u
--     WHERE
--         u.user_name = 'Bill');
