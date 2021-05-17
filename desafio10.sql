USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT 
    COUNT(*)
FROM
    usuario_historico
WHERE
    usuario_id = id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$

DELIMITER ;
