USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT ar.artist_name AS `artista`,
al.title AS `album`
FROM artists AS ar
INNER JOIN album AS al
ON al.artist_id = ar.artist_id
WHERE ar.artist_name LIKE CONCAT('%', artista, '%'); 
END $$
DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
