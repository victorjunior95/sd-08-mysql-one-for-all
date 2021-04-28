USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
  SELECT ar.nome AS 'artista',
  al.album AS 'album'
  FROM Artista AS ar
  INNER JOIN Album AS al ON al.artista_id = ar.artista_id
  WHERE ar.nome = nome_artista;
END $$
DELIMITER ;
