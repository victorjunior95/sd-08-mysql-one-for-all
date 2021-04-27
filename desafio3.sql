CREATE VIEW `historico_reproducao_usuarios` AS
SELECT `user_name` AS `usuario`,
`song_name` AS `nome`
FROM `SpotifyClone`.`user_history` AS H
INNER JOIN `SpotifyClone`.`user` AS U ON U.`user_id` = H.`user_id`
INNER JOIN `SpotifyClone`.`songs` AS S ON S.`song_id` = H.`song_id`
ORDER BY `usuario`, `nome`;
