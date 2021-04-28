-- DELIMITER $$
-- CREATE TRIGGER trigger_usuario_delete
--   BEFORE DELETE ON SpotifyClone.tb_usuario
--   FOR EACH ROW
--   BEGIN 
--   
--     DELETE FROM SpotifyClone.tb_historico_reproducoes WHERE id_usuario = OLD.id_usuario;
-- DELETE FROM SpotifyClone.seguindo_artistas 
-- WHERE
--     id_usuario = OLD.id_usuario;
--   END $$
--   
--   DELIMITER ;
--   

  