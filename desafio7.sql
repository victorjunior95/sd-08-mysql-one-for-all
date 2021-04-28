CREATE OR REPLACE VIEW perfil_artistas AS
SELECT a.artist_name AS `artista`,
    al.title AS `album`,
    COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS a
    INNER JOIN SpotifyClone.album AS al ON al.artist_id = a.artist_id
    INNER JOIN SpotifyClone.`following` AS f ON f.artist_id = a.artist_id
GROUP BY `artista`,
    `album`
ORDER BY `seguidores` DESC,
    `artista`,
    `album`;
-- SELECT 
--     *
-- FROM
--     perfil_artistas;
