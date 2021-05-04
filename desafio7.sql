-- DROP VIEW IF EXISTS perfil_artistas;
CREATE VIEW perfil_artistas AS
SELECT
    nome_artista AS artista,
    nome_album AS album,
    COUNT(*) AS seguidores
FROM
    artista As a,
    album AS ab,
    usuario_artista As s
WHERE
    a.id_artista = ab.id_artista
    AND s.id_artista = a.id_artista
GROUP BY
    `artista`,
    album
ORDER BY
    seguidores DESC,
    `artista`,
    album;
