CREATE VIEW perfil_artistas AS
SELECT 
    AR.artist_name AS `artista`,
    AL.album_name AS `album`,
    COUNT(*) AS `seguidores`
FROM
    album AS AL
        INNER JOIN
    artist AS AR ON AR.artist_id = AL.artist_id
        INNER JOIN
    followed_artist AS F ON F.artist_id = AR.artist_id
GROUP BY `album` , `artista`
ORDER BY `seguidores` DESC , `artista` , `album`;
