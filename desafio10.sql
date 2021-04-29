USE SpotifyClone;
DELIMITER $$
  CREATE FUNCTION quantidade_musicas_no_historico(nome_user VARCHAR(45))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE qtd INT;
    SELECT COUNT(*) FROM SpotifyClone.Historic
      WHERE user_id = (SELECT user_id FROM SpotifyClone.User
      WHERE user = 'Bill'
      ) INTO qtd;
    RETURN qtd;
  END
$$ DELIMITER ;
