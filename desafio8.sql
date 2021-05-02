DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico h
WHERE h.usuario_id = OLD.usuario_id;
DELETE FROM seguidores s
WHERE s.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
