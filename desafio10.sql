USE SpotifyClone;

DELIMITER $ $ CREATE FUNCTION quantidade_musicas_no_historico(esse_id_usario INT) RETURNS INT READS SQL DATA BEGIN DECLARE total INT;

SELECT
    COUNT(*)
FROM
    historico_reproducao
WHERE
    id_usuario = esse_id_usario INTO total;

RETURN total;

END $ $ DELIMITER;
