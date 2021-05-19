CREATE VIEW top_2_hits_do_momento AS 
SELECT song_name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.song AS S
INNER JOIN SpotifyClone.my_playlist AS MP
ON S.song_id = MP.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
