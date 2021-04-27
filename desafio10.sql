DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome_usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
RETURN(SELECT 
COUNT(A.cancao_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_de_reproducao A
JOIN SpotifyClone.usuario B ON A.usuario_id = B.usuario_id
WHERE B.nome = nome_usuario
);
END

$$ DELIMITER ;
