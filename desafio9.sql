USE SpotifyClone;
DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
	SET @artistID = (SELECT artista_id FROM Artistas WHERE CONCAT(nome, ' ', sobrenome) = artista);
	SELECT artista AS artista, nome AS album FROM Albuns where artista_id = @artistID ORDER BY album;
END $$

DELIMITER ;
