DELIMITER $$
  CREATE FUNCTION quantidade_musicas_no_historico(id INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE quantidade_de_musicas INT;
    SELECT COUNT(*)
    FROM SpotifyClone.historicos_de_reproducoes AS HR
    WHERE HR.usuario_id = id
    INTO quantidade_de_musicas;
    RETURN quantidade_de_musicas;
  END
$$ DELIMITER ;
