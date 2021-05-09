DELIMITER &&
  CREATE PROCEDURE `albuns_do_artista`(IN nome_artista VARCHAR(50))
  BEGIN
    SELECT
    a.artista_nome AS `artista`,
    ab.album_nome AS `album`
    FROM SpotifyClone.artistas AS `a`
    INNER JOIN SpotifyClone.albuns AS `ab`
    ON a.artista_id = ab.artista_id
    WHERE a.artista_nome = nome_artista;
  END &&
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
