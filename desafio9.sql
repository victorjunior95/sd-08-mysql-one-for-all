USE `SpotifyClone`;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
SELECT AR.`artist_name` AS `artista`,
AL.`album_name` AS `album`
FROM `artist` AS AR
INNER JOIN `album` AS AL ON AL.`artist_id` = AR.`artist_id`
WHERE AR.`artist_name` LIKE CONCAT('%', artistName, '%')
ORDER BY `album`;
END $$

DELIMITER ;
