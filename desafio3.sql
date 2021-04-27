CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
(SELECT U.name AS usuario, S.title AS nome FROM SpotifyClone.reproductions_history AS RH
INNER JOIN SpotifyClone.user AS U ON RH.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S ON RH.song_id = S.song_id
ORDER BY usuario, nome);
