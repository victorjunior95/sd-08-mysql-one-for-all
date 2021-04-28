-- DELIMITER $$
-- CREATE TRIGGER trigger_usuario_delete
-- AFTER DELETE ON TABELA
-- FOR EACH ROW
-- BEGIN
-- INSERT INTO XXXXX (ACAO, DATA ACAO)
-- VALUES ("EXCLUSAO", NOW());
-- END $$
-- DELIMITIR ;

SELECT * 
FROM SpotifyClone.usuario;

SELECT * 
FROM SpotifyClone.historico_de_reproducoes;
