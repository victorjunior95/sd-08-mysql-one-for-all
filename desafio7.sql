CREATE VIEW `perfil_artistas` AS
SELECT AR.`artist_name` AS `artista`,
AL.`album_name` AS `album`,
(SELECT COUNT(`user_id`) FROM `SpotifyClone`.`user_following` AS F WHERE F.`artist_id` = AR.`artist_id`) AS `seguidores`
FROM `SpotifyClone`.`album` AS AL
INNER JOIN `SpotifyClone`.`artist` AS AR ON AR.`artist_id` = AL.`artist_id`
ORDER BY `seguidores` DESC, `artista`, `album`;
