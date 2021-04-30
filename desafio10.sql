-- Eu tinha feito com parâmetro sendo o nome
-- SELECT 
-- COUNT(*)
-- FROM
-- SpotifyClone.historic AS h
-- GROUP BY h.user_id
-- HAVING h.user_id = (SELECT 
-- user_id
-- FROM
-- SpotifyClone.users AS u
-- WHERE
-- u.user_name = usuario) INTO quantidade;
-- RETURN quantidade;
-- SELECT quantidade_musicas_no_historico(3); 

USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;

SELECT 
COUNT(*)
FROM
SpotifyClone.historic AS h
GROUP BY h.user_id
HAVING h.user_id = user_id INTO quantidade;

RETURN quantidade;

END
$$ DELIMITER ;
