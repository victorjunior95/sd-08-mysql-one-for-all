CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT user_name FROM SpotifyClone.users as u
	WHERE  u.user_id = uh.user_id) AS usuario,
(SELECT song_name FROM SpotifyClone.songs AS s
	WHERE s.song_id = uh.song_id) AS nome
FROM SpotifyClone.user_history AS uh
ORDER BY usuario, nome;
