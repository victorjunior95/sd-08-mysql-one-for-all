DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nomeArtista varchar(50))
BEGIN
SELECT
ar.artista AS `artista`,
al.album AS `album`
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar
ON al.artista_id = ar.artista_id
WHERE `artista` = nomeArtista;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');

-- SELECT
-- ar.artista AS `artista`,
-- al.album AS `album`
-- FROM SpotifyClone.album AS al
-- INNER JOIN SpotifyClone.artista AS ar
-- ON al.artista_id = ar.artista_id
-- WHERE `artista` = "Walter Phoenix";
