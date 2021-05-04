USE SpotifyClone;

DELIMITER $ $ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON usuario FOR EACH ROW BEGIN
DELETE FROM
    historico_reproducao
WHERE
    id_usuario = OLD.id_usuario;

DELETE FROM
    usuario_artista
WHERE
    id_usuario = OLD.id_usuario;

END $ $ DELIMITER;
