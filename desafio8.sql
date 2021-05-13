-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql

DELIMITER $$
  CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuarios
    FOR EACH ROW
  BEGIN
    DELETE FROM historico
    WHERE usuario_id = OLD.id;
    DELETE FROM seguidores
    WHERE usuario_id = OLD.id;
  END;
$$ 
DELIMITER ;
