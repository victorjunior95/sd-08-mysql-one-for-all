USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id)

BEGIN
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM historico_de_reproducoes
WHERE usuario_id = id
END

$$ DELIMITER ;
