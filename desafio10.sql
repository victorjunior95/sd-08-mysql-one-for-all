USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_de_musicas INT;
    SELECT COUNT(musica_id)
	FROM SpotifyClone.usuarios_musicas
	GROUP BY usuario_id
	HAVING usuario_id = id INTO total_de_musicas;
    RETURN total_de_musicas;
	END
$$ DELIMITER ;
