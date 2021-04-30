USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;

SELECT 
COUNT(*)
FROM
SpotifyClone.historic AS h
GROUP BY h.user_id
HAVING h.user_id = (SELECT 
user_id
FROM
SpotifyClone.users AS u
WHERE
u.user_name = usuario) INTO quantidade;

RETURN quantidade;

END
$$ DELIMITER ;

DROP FUNCTION quantidade_musicas_no_historico;

SELECT quantidade_musicas_no_historico("Bill");
