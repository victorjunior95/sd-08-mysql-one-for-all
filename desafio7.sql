CREATE VIEW perfil_artistas AS
  SELECT
  AR.NAME AS 'artista',
  AB.NAME AS 'album',
  COUNT(AF.ARTIST_ID) AS 'seguidores'
  FROM SpotifyClone.albums AS AB
  INNER JOIN artists AS AR
  ON AB.ARTIST_ID = AR.ARTIST_ID
  INNER JOIN artist_followers AS AF
  ON AR.ARTIST_ID = AF.ARTIST_ID
  GROUP BY AB.ALBUM_ID
  ORDER BY `seguidores` DESC, `artista`, `album`;
