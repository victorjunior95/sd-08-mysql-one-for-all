USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT
  COUNT(*)
  FROM SpotifyClone.user as u
  INNER JOIN SpotifyClone.hist_views as hv
  ON u.user_id = hv.user_id
  WHERE u.user_id = user_id
  INTO result;
RETURN result;
END $$;
DELIMITER ;
