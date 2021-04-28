CREATE VIEW perfil_artistas AS
SELECT ART.Nome AS artista,
ALB.Nome AS album,
COUNT(SEG.Artista_id) as seguidores
FROM SpotifyClone.Artista AS ART
INNER JOIN SpotifyClone.Album AS ALB ON ART.Artista_id = ALB.Artista_id
INNER JOIN SpotifyClone.Artista_Seguido AS SEG ON ART.Artista_id = SEG.Artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
