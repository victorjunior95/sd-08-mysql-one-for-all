USE SpotifyClone;

DELIMITER $$ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON users FOR EACH ROW BEGIN DELETE a_u.*, h.* FROM artiste_user AS a_u, historic AS h WHERE a_u.user_id = OLD.user_id AND h.user_id = OLD.user_id;

END $$ DELIMITER ;

-- https://www.linhadecomando.com/php/php-mysql-apagar-registros-em-2-tabelas-com-apenas-1-comando-delete
