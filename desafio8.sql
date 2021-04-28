USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
DELETE HIS, SEG FROM Historico_Musica_Usuario AS HIS
JOIN Artista_Seguido AS SEG
ON SEG.Usuario_id = OLD.Usuario_id
WHERE HIS.Usuario_id = OLD.Usuario_id AND SEG.Usuario_id = OLD.Usuario_id;
END
$$ DELIMITER;
