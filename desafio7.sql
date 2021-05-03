CREATE VIEW perfil_artistas AS
SELECT art.nome_artista artista, alb.nome_album album, COUNT(fav.artista_id) seguidores
FROM SpotifyClone.artista art
JOIN SpotifyClone.album alb ON alb.artista_id = art.artista_id
JOIN SpotifyClone.favoritos fav ON fav.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
