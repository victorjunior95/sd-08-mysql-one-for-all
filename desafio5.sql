CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS `cancao`, COUNT(um.usuario_id) AS `reproducoes`
FROM SpotifyClone.usuarios_musicas AS um
INNER JOIN SpotifyClone.musicas AS m
ON um.musica_id = m.musica_id
GROUP BY musica
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
