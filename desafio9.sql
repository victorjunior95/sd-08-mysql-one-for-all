USE SpotfityClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(30))
BEGIN
SELECT artista, album FROM album AS alb
INNER JOIN artista AS art ON art.artista_id = alb.artista_id
WHERE art.artista = artista_nome
ORDER BY album;
END
$$ DELIMITER ;
