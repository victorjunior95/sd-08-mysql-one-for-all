CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_nome cancao, count(h.musica_id) reproducoes
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico h
ON m.musica_id = h.musica_id
GROUP BY m.musica_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
