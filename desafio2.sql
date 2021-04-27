CREATE VIEW estatisticas_musicais AS
SELECT COUNT(Cancao_id) AS 'cancoes',
(SELECT COUNT(Artista_id) FROM SpotifyClone.Artista) AS 'artistas',
(SELECT COUNT(Album_id) FROM SpotifyClone.Album) AS 'albuns'
FROM SpotifyClone.Cancao;
