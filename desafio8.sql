DELIMITER $$ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON usuarios FOR EACH ROW BEGIN
DELETE FROM SpotifyClone.seguindo
WHERE (usuario_id = 1);
DELETE FROM SpotifyClone.reproducoes
WHERE (usuario_id = '1');
END DELIMITER $$;
