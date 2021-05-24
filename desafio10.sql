/*
Crie uma function chamada de quantidade_musicas_no_historico 
que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução 
de uma pessoa usuária. 
Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.
*/

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA 
BEGIN
    DECLARE 
        result INT;
    SELECT 
        COUNT(user_id)
    FROM 
        SpotifyClone.history
    WHERE
        user_id = id INTO result;
    RETURN result;
END $$

DELIMITER ;
