USE SpotifyClone;

DELIMITER $ $ CREATE PROCEDURE albuns_do_artista(IN este_nome_artista VARCHAR(50)) BEGIN
SELECT
    a.nome_artista AS artista,
    ab.nome_album AS album
FROM
    artista AS a
    INNER JOIN album AS ab ON a.id_artista = ab.id_artista
WHERE
    `nome_artista` = `este_nome_artista`
ORDER BY
    `album`;

END $ $ DELIMITER;
