CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.user_name AS usuario,
s.song_title AS nome
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON h.played_by_user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s
ON h.song_id = s.song_id
ORDER BY usuario, nome;
