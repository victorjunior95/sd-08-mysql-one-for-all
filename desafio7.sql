CREATE VIEW perfil_artistas AS
  SELECT
    artists.artista AS artista,
    albums.album AS album,
    followers.total AS seguidores
  FROM
    SpotifyClone.albums AS albums
  INNER JOIN SpotifyClone.artists AS artists
    ON albums.artista_id = artists.artista_id
  INNER JOIN
    (SELECT
      follow.artista_id AS artista_id,
      COUNT(*) AS total
    FROM SpotifyClone.follow AS follow
    GROUP BY artista_id) AS followers
  ON albums.artista_id = followers.artista_id
  ORDER BY seguidores DESC, artista, seguidores;
