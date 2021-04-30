DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
	BEFORE DELETE ON Users
    FOR EACH ROW
BEGIN
	DELETE FROM HistoricoDeMusicas
    WHERE idUser = OLD.idUser;
    DELETE FROM Seguindo
    WHERE idUser = OLD.idUser;
END $$

DELIMITER ;
