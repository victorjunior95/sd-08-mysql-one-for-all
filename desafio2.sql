CREATE VIEW estatisticas_musicais AS 
SELECT (SELECT COUNT(sc.cancao) FROM SpotifyClone.cancoes AS sc) AS 'cancoes',
(SELECT COUNT(sa.artista) FROM SpotifyClone.artistas AS sa) AS 'artistas',
(SELECT COUNT(sal.album) FROM SpotifyClone.albuns AS sal) AS 'albuns';
