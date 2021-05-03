DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON SpotifyClone.usuarios FOR EACH ROW BEGIN
DELETE FROM SpotifyClone.usariosSeguidores 
WHERE
    usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historicoReproducao 
WHERE
    usuario_id = OLD.usuario_id;
END $$ 
DELIMITER ;
