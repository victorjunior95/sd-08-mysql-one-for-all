DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(parametro_de_entrada INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas_no_historico INT;
SELECT COUNT(*) FROM usuarios U
INNER JOIN historico H ON U.usuario_id = H.usuario_id
WHERE U.usuario_id = parametro_de_entrada
INTO musicas_no_historico;
RETURN musicas_no_historico;
END $$
DELIMITER ;
