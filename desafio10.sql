-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql

DELIMITER $
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qnt_songs INT;
SELECT 
    COUNT(historico.musica_id)
FROM
    SpotifyClone.historico
WHERE
    historico.usuario_id = id INTO qnt_songs;
    RETURN qnt_songs;
END $
DELIMITER ;
