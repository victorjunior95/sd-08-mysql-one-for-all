CREATE VIEW cancoes_premium AS
SELECT 
a.song_name AS 'nome', COUNT(b.song_id) AS 'reproducoes' 
FROM SpotifyClone.songs a
INNER JOIN (
SELECT song_id 
FROM SpotifyClone.historico_de_reproducoes 
WHERE user_id IN (
SELECT user_id 
FROM SpotifyClone.users 
WHERE plano_id IN (
SELECT plano_id 
FROM SpotifyClone.planos 
WHERE plano_name = 'universitário' 
OR plano_name = 'familiar'))) b 
ON b.song_id = a.song_id
GROUP BY a.song_name
ORDER BY a.song_name;
