CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT m.music) AS cancoes,
COUNT(DISTINCT s.singer) AS artistas,
COUNT(DISTINCT a.album) AS albuns
FROM 
SpotifyClone.album AS a,
SpotifyClone.singer AS s,
SpotifyClone.music as m;
