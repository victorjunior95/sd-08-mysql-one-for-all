USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade INT;
SELECT 
    COUNT(*)
FROM
    historic AS H
WHERE
    H.user_id = user_id INTO quantidade;
    RETURN quantidade;
END $$

DELIMITER ;
