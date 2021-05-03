CREATE VIEW estatisticas_musicais AS
SELECT 
  (SELECT COUNT(id_cancao) FROM SpotifyClone.Cancoes) AS `cancoes`,
  (SELECT COUNT(artista_id) FROM SpotifyClone.Artistas) AS `artistas`,
  (SELECT COUNT(album_id) FROM SpotifyClone.Albuns) AS `albuns`;
