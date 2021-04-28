DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT; 
  SELECT COUNT(id_cancao) FROM SpotifyClone.tb_historico_reproducoes WHERE id_usuario = id INTO total;
  RETURN total;
END $$

SELECT * FROM SpotifyClone.tb_historico_reproducoes;
