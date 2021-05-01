USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(cancoes_id)
FROM reproducoes AS r
INNER JOIN usuario AS u
ON r.usuario_id = u.usuario_id
WHERE usuario = u.usuario_id INTO total_musicas;
RETURN total_musicas;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
