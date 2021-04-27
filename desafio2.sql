CREATE VIEW estatisticas_musicais AS
SELECT COUNT(nome_cancao) AS 'cancoes',
(SELECT COUNT(nome_artista) FROM SpotifyClone.artista) AS 'artistas',
(SELECT COUNT(nome_album) FROM SpotifyClone.album) AS 'albuns'
FROM SpotifyClone.cancoes;
