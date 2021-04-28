CREATE VIEW perfil_artistas AS
  SELECT ARTIST.artist AS `artista`, ALBUM.album AS `album`, COUNT(FOLLOW_A.artist_id) AS `seguidores`
  FROM SpotifyClone.Artist AS `ARTIST`
  INNER JOIN SpotifyClone.Album AS `ALBUM`
  ON ARTIST.artist_id = ALBUM.artist_id
  INNER JOIN SpotifyClone.Follow_Artist AS `FOLLOW_A`
  ON ARTIST.artist_id = FOLLOW_A.artist_id
  GROUP BY ARTIST.artist, ALBUM.album
  ORDER BY COUNT(FOLLOW_A.artist_id) DESC, ARTIST.artist, ALBUM.album;
