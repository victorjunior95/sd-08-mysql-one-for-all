CREATE VIEW historico_reproducao_usuarios AS
SELECT u.username AS usuario, s.song AS nome FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.Playback_history AS p ON p.user_id = u.user_id
INNER JOIN SpotifyClone.Songs AS s ON s.song_id = p.song_id
ORDER BY usuario, nome;
