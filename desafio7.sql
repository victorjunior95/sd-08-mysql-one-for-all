CREATE VIEW perfil_artistas AS
SELECT
ART.artist_name AS 'artista',
AA.album_title AS 'album',
COUNT(FA.artist_id) AS 'seguidores'
FROM SpotifyClone.all_album AS AA
INNER JOIN SpotifyClone.all_artist AS ART
ON AA.artist_id = ART.artist_id
INNER JOIN SpotifyClone.followed_artists AS FA
ON FA.artist_id = ART.artist_id
GROUP BY ART.artist_name, AA.album_title
ORDER BY `seguidores` DESC, `artista`, `album`;
