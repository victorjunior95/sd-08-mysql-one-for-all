CREATE VIEW top_3_artistas AS
SELECT art.nome_artista artista, count(fav.artista_id) seguidores
FROM SpotifyClone.artista art
JOIN SpotifyClone.favoritos fav ON art.artista_id = fav.artista_id
GROUP BY art.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
