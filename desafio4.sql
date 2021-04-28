CREATE VIEW top_3_artistas AS
SELECT
nome_artista 'artista',
COUNT(*) 'seguidores'
FROM artistas_seguidos ARTS
INNER JOIN artistas A ON A.artista_id = ARTS.artista_id
GROUP BY nome_artista
ORDER BY 'seguidores'
LIMIT 3;
