DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico INT;
SELECT COUNT(*) FROM SpotifyClone.usuario  u
INNER JOIN SpotifyClone.historico h  ON u.usuario_id = h.usuario_id
WHERE u.usuario_id = usuario
INTO historico;
RETURN historico;
END
$$ DELIMITER ;
