CREATE VIEW perfil_artistas AS
  SELECT
    artists.name AS artista,
    albums.name AS album,
    COUNT(followers.artist_id) AS seguidores
  FROM SpotifyClone.followers
  JOIN SpotifyClone.artists ON artists.artist_id = followers.artist_id
  JOIN SpotifyClone.albums ON albums.artist_id = artists.artist_id
  GROUP BY followers.artist_id, albums.album_id
  ORDER BY seguidores DESC, artista, album;
