DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(30))
BEGIN
  SELECT A.nome AS artista, B.nome AS album 
  FROM SpotifyClone.tb_artista AS A
  INNER JOIN SpotifyClone.tb_album AS B
  USING(id_artista) WHERE  A.nome = nome ORDER BY album ASC;
END $$

DELIMITER ;
