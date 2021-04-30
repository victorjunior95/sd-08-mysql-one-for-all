CREATE VIEW top_3_artistas AS
SELECT A.nome_artista AS 'artista', COUNT(S.usuario_ID) AS 'seguidores'
FROM SpotifyClone.artista_seguido AS S
INNER JOIN SpotifyClone.artista AS A ON S.artista_ID = A.artista_ID
GROUP BY A.artista_ID
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
