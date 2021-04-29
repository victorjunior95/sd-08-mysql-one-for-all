CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.user AS usuario,
m.music AS nome
FROM 
SpotifyClone.user AS u
INNER JOIN SpotifyClone.hist_views as hv
ON u.user_id = hv.user_id
INNER JOIN SpotifyClone.music as m
ON m.music_id = hv.music_id
ORDER BY usuario, nome;
