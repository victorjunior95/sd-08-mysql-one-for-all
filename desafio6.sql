CREATE VIEW faturamento_atual AS
    SELECT
        CAST(MIN(P.preco) AS DECIMAL (10 , 2 )) AS 'faturamento_minimo',
        CAST(MAX(P.preco) AS DECIMAL (10 , 2 )) AS 'faturamento_maximo',
        CAST(SUM(P.preco) / COUNT(U.usuario_ID) AS DECIMAL (10 , 2 )) AS 'faturamento_medio',
        CAST(SUM(P.preco) AS DECIMAL (10 , 2 )) AS 'faturamento_total'
    FROM
        SpotifyClone.usuario AS U
            INNER JOIN
        SpotifyClone.plano AS P ON U.plano_ID = P.plano_ID
