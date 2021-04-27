DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (codigoUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT 
    COUNT(hr.musica_id)
  FROM SpotifyClone.HistoricoReproducoes AS hr
  INNER JOIN SpotifyClone.Usuarios AS u
  ON hr.usuario_id = u.usuario_id
  WHERE u.usuario_id = codigoUsuario
  GROUP BY u.nome_usuario
  INTO quantidade;
  RETURN quantidade;
END

$$ DELIMITER ;
