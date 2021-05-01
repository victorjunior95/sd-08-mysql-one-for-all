USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(45))
BEGIN
  SELECT A.nome_artista AS 'artista', B.nome_album AS 'album'
  FROM SpotifyClone.album AS B
  INNER JOIN SpotifyClone.artista A ON A.artista_ID = B.artista_ID
WHERE A.nome_artista = nome
ORDER BY B.nome_album;
END $$

DELIMITER ;
