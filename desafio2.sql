USE SpotifyClone ;
CREATE VIEW estatisticas_musicais AS
SELECT MAX(m.cancoes_id) AS cancoes, MAX(a.artista_id) AS artistas, MAX(al.album_id) AS  albuns
FROM SpotifyClone._musicas as m, SpotifyClone._artistas as a, SpotifyClone._albums AS al;