CREATE VIEW top_3_artistas AS
SELECT ART.Nome AS artista,
COUNT(SEG.Artista_id) AS seguidores
FROM SpotifyClone.Artista AS ART
INNER JOIN SpotifyClone.Artista_Seguido AS SEG ON ART.Artista_id = SEG.Artista_id
GROUP BY `artista`
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
