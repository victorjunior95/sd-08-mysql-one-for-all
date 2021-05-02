DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidadeReproducoes INT;
    SELECT COUNT(usuario_id)
    FROM SpotifyClone.HistoricoReproducao
    WHERE usuario_id = id INTO quantidadeReproducoes;
    RETURN quantidadeReproducoes;
END
    