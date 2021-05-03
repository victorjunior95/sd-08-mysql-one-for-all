DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuarios
FOR EACH ROW
BEGIN
DELETE FROM HistoricoDeReproducoes
WHERE usuario_id = OLD.usuario_id; 
DELETE FROM SeguindoArtistas
WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;

DELETE FROM Usuarios WHERE usuario_name = 'Thati';
SELECT * FROM Usuarios;
