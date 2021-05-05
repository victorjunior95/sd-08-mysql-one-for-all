DELIMITER kabô
  CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuarios
    FOR EACH ROW
  BEGIN
    DELETE FROM historico
    WHERE usuarios_id = OLD.id;
    DELETE FROM seguidores
    WHERE usuarios_id = OLD.id;
  END;
kabô 
DELIMITER ;
