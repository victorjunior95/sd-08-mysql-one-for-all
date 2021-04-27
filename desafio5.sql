CREATE VIEW `top_2_hits_do_momento` AS
SELECT `song_name` AS `cancao`,
COUNT(`user_id`) AS `reproducoes`
FROM `SpotifyClone`.`user_history` AS H
INNER JOIN `SpotifyClone`.`songs` AS S ON S.`song_id` = H.`song_id`
GROUP BY H.`song_id`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
