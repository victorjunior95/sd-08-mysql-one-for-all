USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_de_musicas INT;
    SELECT COUNT(*)
    FROM historico_de_reproducoes
    WHERE usuario_id = id INTO quantidade_de_musicas_historico;
    RETURN quantidade_de_musicas;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
