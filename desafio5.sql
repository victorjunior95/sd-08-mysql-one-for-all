CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_nome AS cancao, COUNT(*) FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.reproducoes r
ON m.musica_id = r.musica_id
GROUP BY m.musica_nome
ORDER BY 2 DESC, 1
LIMIT 2;
