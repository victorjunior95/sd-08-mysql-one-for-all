SELECT sa.artista AS 'artista', COUNT(sa.artista_id) AS 'seguidores' FROM SpotifyClone.seguidores AS ss
INNER JOIN SpotifyClone.artistas AS sa
ON ss.artista_id = sa.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
