DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico AS h
WHERE h.usuario_id = OLD.usuario_id;
DELETE FROM seguindo AS s
WHERE s.usuario_id = OLD.usuario_id;
END
$$
DELIMITER ;
