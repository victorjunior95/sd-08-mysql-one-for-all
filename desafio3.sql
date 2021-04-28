CREATE VIEW historico_reproducao_usuarios AS
SELECT name as 'usuario', title as 'nome' FROM SpotifyClone.playback_history AS PH
INNER JOIN song AS S ON PH.song_id = S.song_id
INNER JOIN user AS U ON PH.user_id = U.user_id
ORDER by name, title
