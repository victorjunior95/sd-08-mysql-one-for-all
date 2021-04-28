CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario,
s.song_title AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS h
ON u.user_id = h.user_id AND h.song_id = s.song_id
ORDER BY usuario, nome;
