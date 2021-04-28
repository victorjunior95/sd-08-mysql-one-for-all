CREATE VIEW perfil_artistas AS

SELECT
a.nome_artista AS 'artista',
b.nome_album AS 'album',
sub.qnt AS 'seguidores'
FROM (
SELECT
artista_id,
COUNT(artista_id) AS 'qnt' FROM seguindo
GROUP BY artista_id) AS sub
INNER JOIN artistas AS a
ON a.artista_id = sub.artista_id
INNER JOIN albuns AS b
ON b.artista_id = sub.artista_id
ORDER BY 3 DESC, 1, 2;
