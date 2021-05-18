CREATE VIEW historico_reproducao_usuarios AS
SELECT user_name AS usuario,
song_name AS nome
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.my_playlist AS MP
ON U.user_id = MP.user_id
INNER JOIN SpotifyClone.song AS S
ON MP.song_id = S.song_id
ORDER BY usuario, nome;
