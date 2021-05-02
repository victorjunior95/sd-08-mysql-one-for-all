-- DESAFIO 4
CREATE VIEW top_3_artistas AS
SELECT
CONCAT(tbA.artista_nome, ' ', tbA.artista_sobrenome) AS artista,
COUNT(tbAC.usuario_id) AS seguidores
FROM SpotifyClone.artista AS tbA
INNER JOIN SpotifyClone.acompanha AS tbAC
ON tbA.artista_id = tbAC.artista_id
GROUP BY tbA.artista_id
ORDER BY COUNT(tbAC.usuario_id) DESC, tbA.artista_nome
LIMIT 3;
