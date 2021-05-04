CREATE VIEW top_2_hits_do_momento AS
SELECT
    nome_cancao AS cancao,
    COUNT(*) AS reproducoes
FROM
    historico_reproducao AS hr
    INNER JOIN cancao AS c ON hr.id_cancao = c.id_cancao
GROUP BY
    `cancao`
ORDER BY
    `reproducoes` DESC,
    `cancao`
LIMIT
    2;
