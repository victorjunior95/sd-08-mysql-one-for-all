CREATE VIEW perfil_artistas AS
SELECT ART.nome_artista artista, ALB.nome_album album, COUNT(*) seguidores
FROM albuns ALB
INNER JOIN artistas ART ON ART.artista_id = ALB.artista_id
INNER JOIN artistas_seguidos ARTS ON ARTS.artista_id = ART.artista_id
GROUP BY ALB.album_id
ORDER BY seguidores DESC, artista DESC, album;
