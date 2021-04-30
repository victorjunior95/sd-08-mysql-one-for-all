DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(45))
BEGIN
	SELECT AR.Nome AS `artista`,
    AB.NOME AS `album`
    FROM Albuns AS AB
    INNER JOIN Artistas AS AR
    ON AB.idArtista = AR.idArtista
    WHERE AR.Nome = name
    ORDER BY `album`;
END $$
DELIMITER ;

-- CALL albuns_do_artista("Walter Phoenix");
