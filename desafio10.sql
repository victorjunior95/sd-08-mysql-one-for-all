DELIMITER $$
  CREATE FUNCTION quantidade_musicas_no_historico(user INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE history INT;
    SELECT COUNT(*) FROM SpotifyClone.users AS U
    INNER JOIN SpotifyClone.history AS H ON U.user_id = H.user_id
    WHERE U.user_id = user
    INTO history;
    RETURN history;
  END
$$ DELIMITER ;
