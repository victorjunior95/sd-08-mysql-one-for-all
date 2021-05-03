DELIMITER $M
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT 
  art.nome_artista AS artista,
  alb.nome_album AS album
FROM
  SpotifyClone.artistaTB AS art
    INNER JOIN
  SpotifyClone.albunsTB AS alb ON alb.artistaID = art.artistaID
WHERE art.nome_artista = nome_artista;
END
$M DELIMITER ;
