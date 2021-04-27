CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
  u.name AS usuario,
  s.name AS nome
FROM users AS u
INNER JOIN songs_history AS sh
ON u.user_id = sh.user_id
INNER JOIN songs AS s
ON s.song_id = sh.song_id
ORDER BY usuario, nome;
