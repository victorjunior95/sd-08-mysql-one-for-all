CREATE VIEW top_2_hits_do_momento AS
SELECT
m.music AS cancao,
COUNT(distinct hv.user_id) AS reproducoes
FROM 
SpotifyClone.music AS m
INNER JOIN SpotifyClone.hist_views as hv
ON m.music_id = hv.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
