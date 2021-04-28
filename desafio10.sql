DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(busca INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) FROM historico
WHERE usuario_id = busca
GROUP BY usuario_id INTO quantidade;
RETURN quantidade;
END
$$
DELIMITER ;
