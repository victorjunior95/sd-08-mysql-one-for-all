USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE Total INT;
    SELECT COUNT(idUser)
    FROM HistoricoDeMusicas
    WHERE HistoricoDeMusicas.idUser = userID INTO Total;
    RETURN total;
END $$

DELIMITER ;
-- SELECT nome_da_function(3);
