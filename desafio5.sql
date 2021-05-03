CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome AS `cancao`, COUNT(m.musica_id) AS `reproducoes` FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
GROUP BY m.musica_id
ORDER BY `reproducoes` DESC, m.nome
LIMIT 2;
