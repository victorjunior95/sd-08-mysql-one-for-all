USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(param1 INT)
RETURNS INT NOT DETERMINISTIC READS SQL DATA
BEGIN
DECLARE uid int;
SELECT count(cancoes_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone._historico as h
INNER JOIN SpotifyClone._usuarios AS u ON u.usuario_id = h.usuario_id WHERE  h.usuario_id = param1
GROUP BY usuario INTO uid;
RETURN UID;
END$$
DELIMITER ;
