DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN param_nome_artista VARCHAR(50))
BEGIN
  SELECT a.artista AS artista, ab.album AS album
  FROM SpotifyClone._artistas AS a
  INNER JOIN SpotifyClone._albums AS ab ON a.artista_id = ab.artista_id
  WHERE `artista` = `param_nome_artista`
  ORDER BY `album`;
END $$ 
DELIMITER ;
