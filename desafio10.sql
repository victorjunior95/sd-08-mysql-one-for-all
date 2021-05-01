DELIMITER @|
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
-- instrução da stored function
DECLARE quantidade_musicas INT;
SELECT 
    COUNT(usuario_id)
FROM
    historico AS h
WHERE
    h.usuario_id = usuario_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END
@| DELIMITER ;

-- SELECT quantidade_musicas_no_historico(3);
