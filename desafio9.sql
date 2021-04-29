USE SpotifyClone;
DELIMITER $$
  CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(45))
  BEGIN
    SELECT nome_artista AS `artista`, album AS `album` FROM SpotifyClone.Album
  WHERE artist_id = (
    SELECT artist_id FROM SpotifyClone.Artist
    WHERE artist = nome_artista
  );
  END
$$ DELIMITER ;
