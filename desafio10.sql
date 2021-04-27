DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
RETURN(SELECT 
COUNT(A.cancao_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_de_reproducao A
WHERE A.usuario_id = usuario_id
);
END

$$ DELIMITER ;
