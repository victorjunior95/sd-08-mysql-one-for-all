DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN parametro_de_entrada VARCHAR(50))
BEGIN
SELECT ART.artista AS artista, ALB.album AS album FROM artistas ART
INNER JOIN albuns AS ALB ON ART.artista_id = ALB.artista_id
WHERE ART.artista = parametro_de_entrada
ORDER BY album;
END $$
DELIMITER ;
