CREATE VIEW SpotifyClone.estatisticas_musicais AS 
SELECT MAX(m.cancoes_id) AS cancoes, MAX(a.artista_id) AS artistas, MAX(l.album_id) AS  albuns
FROM SpotifyClone._musicas as m, SpotifyClone._artistas AS a, SpotifyClone._albums AS l;
