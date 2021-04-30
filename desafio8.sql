DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user
    FOR EACH ROW
BEGIN
    INSERT INTO user(acao, data_acao)
    VALUES ('exclusão', NOW());
END $$
DELIMITER ;
