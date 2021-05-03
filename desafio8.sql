DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON table_users
FOR EACH ROW
BEGIN
DELETE FROM table_follow_stars
WHERE id_users = OLD.id_users;
DELETE FROM table_history
WHERE id_users = OLD.id_users;
END $$;
DELIMITER ;
