USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT u.username AS usuario, s.song AS nome FROM Users AS u
INNER JOIN Playback_history AS p ON p.user_id = u.user_id
INNER JOIN Songs AS s ON s.song_id = p.song_id
ORDER BY usuario, nome;
