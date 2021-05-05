-- Verificar bug
USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN art VARCHAR(80))
BEGIN
  SELECT a.artista AS 'artista', ab.album AS 'album'
  FROM _artistas AS a
  INNER JOIN SpotifyClone._albums AS ab ON a.artista_id = ab.artista_id
  WHERE artista = art
  ORDER BY album;
END $$ 
DELIMITER ;
