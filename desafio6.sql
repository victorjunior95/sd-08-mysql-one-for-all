-- https://www.w3schools.com/sql/func_mysql_convert.asp
CREATE VIEW faturamento_atual AS
    SELECT 
        CONVERT( ROUND(MIN(p.valor), 2) , CHAR) AS faturamento_minimo,
        CONVERT( ROUND(MAX(p.valor), 2) , CHAR) AS faturamento_maximo,
        CONVERT( ROUND(AVG(p.valor), 2) , CHAR) AS faturamento_medio,
        CONVERT( ROUND(SUM(p.valor), 2) , CHAR) AS faturamento_total
    FROM
        SpotifyClone.planos AS p
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.plano_id = p.id;

-- SELECT * FROM faturamento_atual;
