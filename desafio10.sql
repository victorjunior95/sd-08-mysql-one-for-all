-- 10 - Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que
-- estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código
-- identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.
-- 	Confirme a execução correta da function, chamando-a e passando o id para a pessoa usuária com
-- 	o nome igual a "Bill". Sua function deve retornar o mesmo que o resultado abaixo:
-- 	O que será verificado:
-- 		Será validado se a function quantidade_musicas_no_historico, ao receber o código identificador
-- 		de uma pessoa usuária, retorna a quantidade correta de canções presentes no histórico de reprodução
-- 		desta pessoa.
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(ID_user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_singles_historic INT;
SELECT COUNT(UserID) FROM SpotifyClone.Historic
WHERE UserID = ID_user
INTO quantity_singles_historic;
RETURN quantity_singles_historic;
END
$$ DELIMITER ;
