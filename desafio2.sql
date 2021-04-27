CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(cancoes_id) FROM SpotifyClone.cancoes) AS 'cancoes',
(SELECT COUNT(artistas_id) FROM SpotifyClone.artistas) AS 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS 'albuns';
