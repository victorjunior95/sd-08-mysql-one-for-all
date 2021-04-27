DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT
    a.artista AS 'artista',
    al.album AS 'album'
  FROM artista a
  INNER JOIN album al
  ON al.artista_id = a.artista_id
  WHERE `artista` = nome;
END $$
DELIMITER ;
