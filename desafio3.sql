CREATE VIEW historico_reproducao_usuarios AS
SELECT username AS usuario,
s.song_name AS nome
FROM SpotifyClone.Spotify_User AS u
INNER JOIN SpotifyClone.History AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.Songs AS s
ON h.song_id = s.song_id
ORDER BY usuario, nome;
