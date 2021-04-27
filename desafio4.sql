CREATE VIEW `top_3_artistas` AS
SELECT A.`artist_name` AS `artista`,
COUNT(F.`user_id`) AS `seguidores`
FROM `SpotifyClone`.`user_following` AS F
INNER JOIN `SpotifyClone`.`artist` AS A ON A.`artist_id` = F.`artist_id`
GROUP BY F.`artist_id`
ORDER BY `seguidores` DESC, `artista` 
LIMIT 3;
