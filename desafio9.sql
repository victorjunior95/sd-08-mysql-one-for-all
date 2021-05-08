DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
  SELECT
  art.artista AS 'artista',
  album.album AS 'album'
  FROM SpotifyClone.Artista AS art
  INNER JOIN SpotifyClone.Album AS album
  ON art.artista_id = album.artista_id
  WHERE nome_artista = art.artista;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
