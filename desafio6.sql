CREATE VIEW faturamento_atual AS
    SELECT 
      CONVERT( ROUND(MIN(pl.valor_plano), 2) , CHAR) AS faturamento_minimo,
      CONVERT( ROUND(MAX(pl.valor_plano), 2) , CHAR) AS faturamento_maximo,
      CONVERT( ROUND(AVG(pl.valor_plano), 2) , CHAR) AS faturamento_medio,
      CONVERT( ROUND(SUM(pl.valor_plano), 2) , CHAR) AS faturamento_total
    FROM
      SpotifyClone.planoTB AS pl
        INNER JOIN
      SpotifyClone.usuarioTB AS us ON us.planoID = pl.planoID;

-- SELECT * FROM faturamento_atual;
-- https://dev.mysql.com/doc/refman/8.0/en/cast-functions.html
-- https://www.w3schools.com/sql/func_mysql_convert.asp
