USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico( numberOfUser INT)
RETURNS DOUBLE READS SQL DATA
BEGIN
    DECLARE numberOfHistoric INT;
    SELECT SUM(CASE WHEN usuario_id =numberOfUser THEN 1 ELSE 0 END )  FROM SpotifyClone.Historico 
    INTO numberOfHistoric;
RETURN numberOfHistoric;
END $$
DELIMITER ;
SELECT quantidade_musicas_no_historico(3);
-- SELECT @numbers;
--  SequelizeDatabaseError: Incorrect number of arguments for FUNCTION SpotifyClone.quantidade_musicas_no_historico; expected 2, got 1
