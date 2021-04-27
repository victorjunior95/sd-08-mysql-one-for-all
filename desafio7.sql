CREATE VIEW perfil_artistas AS
SELECT CONCAT(ar.nome, ' ', ar.sobrenome) AS artista,
al.nome AS album,
COUNT(s.usuario_id) AS seguidores
FROM Artistas as ar
INNER JOIN Albuns as al
ON ar.artista_id = al.artista_id
INNER JOIN Seguindo as s
ON ar.artista_id = s.artista_id
GROUP BY s.artista_id, al.nome
ORDER BY seguidores DESC, artista, album;
