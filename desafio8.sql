DELIMITER @|
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
    FOR EACH ROW
BEGIN
-- instrução do trigger
DELETE FROM seguidores WHERE usuario_id = OLD.id;
DELETE FROM historico WHERE usuario_id = OLD.id;
END
@| DELIMITER ;

-- DELETE FROM usuarios WHERE id = 1;
-- SELECT usuario_id FROM seguidores;
-- SELECT usuario_id FROM historico;
