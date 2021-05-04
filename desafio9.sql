DELIMITER $$ CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100)) BEGIN
SELECT A.artista_nome AS artista,
  AL.album_nome AS album
FROM SpotifyClone.artista AS A
  INNER JOIN SpotifyClone.album AS AL ON A.id = AL.artista_id
WHERE A.artista_nome = nome
ORDER BY album;
END $$ DELIMITER;
