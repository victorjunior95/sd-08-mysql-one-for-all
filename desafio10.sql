DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(busca_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant_cancao INT;
SELECT COUNT(H.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.Historico AS H
ON U.usuario_id = H.usuario_id
WHERE U.usuario_id = busca_id
INTO quant_cancao;
RETURN quant_cancao;
END $$
DELIMITER ;
