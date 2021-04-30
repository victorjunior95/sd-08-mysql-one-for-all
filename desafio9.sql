USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN singer VARCHAR(45))
BEGIN
SELECT 
  s.singer AS artista,
  a.album AS album
  FROM
  SpotifyClone.singer AS s
  INNER JOIN SpotifyClone.album AS a
  N a.singer_id = s.singer_id
  WHERE s.singer = singer
  ORDER BY album;
END $$;
DELIMITER ;
