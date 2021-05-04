CREATE VIEW faturamento_atual AS
SELECT
    MIN(valor_plano) AS faturamento_minimo,
    MAX(valor_plano) AS faturamento_maximo,
    ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    SUM(valor_plano) AS faturamento_total
FROM
    (
        SELECT
            p.valor_plano
        FROM
            usuario AS u
            INNER JOIN plano AS p ON u.id_plano = p.id_plano
    ) AS planos;
