USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (ID_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE count_musica INT;
  SELECT COUNT(usuario_ID)
FROM SpotifyClone.historico_reproducoes
WHERE usuario_ID = ID_usuario
  INTO count_musica;
  RETURN count_musica;
END $$;

DELIMITER ;
