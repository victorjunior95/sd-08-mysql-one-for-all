-- DROP VIEW IF EXISTS top_3_artistas;
CREATE VIEW top_3_artistas AS (
    SELECT
        nome_artista AS artista,
        COUNT(ua.id_artista) AS seguidores
    FROM
        artista AS a
        INNER JOIN usuario_artista AS ua ON ua.id_artista = a.id_artista
    GROUP BY
        `artista`
    ORDER BY
        seguidores DESC,
        `artista`
    LIMIT
        3
);
