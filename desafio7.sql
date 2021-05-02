-- DESAFIO 7
CREATE VIEW perfil_artistas AS
SELECT
CONCAT(tbA.artista_nome, ' ', tbA.artista_sobrenome) AS artista,
tbAL.album_nome AS album,
COUNT(tbAC.artista_id) AS seguidores
FROM SpotifyClone.artista AS tbA
INNER JOIN SpotifyClone.album AS tbAL
ON tbA.artista_id = tbAL.artista_id
INNER JOIN SpotifyClone.acompanha AS tbAC
ON tbA.artista_id = tbAC.artista_id
GROUP BY tbAL.album_id
ORDER BY COUNT(tbAC.usuario_id) DESC, CONCAT(tbA.artista_nome, ' ', tbA.artista_sobrenome), tbAL.album_nome;
