CREATE VIEW `cancoes_premium` AS
SELECT S.`song_name` AS `nome`,
COUNT(H.`song_id`) AS `reproducoes`
FROM `SpotifyClone`.`user_history` AS H
INNER JOIN `SpotifyClone`.`songs` AS S ON S.`song_id` = H.`song_id`
INNER JOIN `SpotifyClone`.`user` AS U ON U.`user_id` = H.`user_id`
WHERE U.`subscription_id` IN (2, 3)
GROUP BY S.`song_name`
ORDER BY `nome`;
