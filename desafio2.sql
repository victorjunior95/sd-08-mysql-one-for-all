CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT cancao) AS `cancoes`, COUNT(DISTINCT artista) AS `artistas`, COUNT(DISTINCT album) AS `albuns` 
FROM SpotifyClone.Cancoes, SpotifyClone.Artistas, SpotifyClone.Albuns;
