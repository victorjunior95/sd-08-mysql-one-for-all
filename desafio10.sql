DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_musicas INT;
  SELECT
    COUNT(c.cancao) AS 'quantidade_musicas_no_historico'
  FROM cancao c
  INNER JOIN historico_de_reproducoes rp
    ON rp.cancao_id = c.cancao_id
  INNER JOIN usuario u
    ON u.usuario_id = rp.usuario_id
  WHERE u.usuario_id = usuario_id INTO total_musicas;
  RETURN total_musicas;
END $$
DELIMITER ;
