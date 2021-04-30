CREATE VIEW historico_reproducao_usuarios AS
SELECT b.user_name AS 'usuario', c.song_name AS 'nome' 
FROM SpotifyClone.historico_de_reproducoes a
INNER JOIN SpotifyClone.users b ON a.user_id = b.user_id
INNER JOIN SpotifyClone.songs c ON a.song_id = c.song_id
ORDER BY b.user_name, c.song_name;
