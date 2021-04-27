CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
(SELECT S.title AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.reproductions_history AS RH
INNER JOIN SpotifyClone.songs AS S ON RH.song_id = S.song_id
GROUP BY S.title ORDER BY reproducoes DESC, S.title ASC LIMIT 2);
