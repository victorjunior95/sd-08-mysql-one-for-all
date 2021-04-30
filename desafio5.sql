CREATE VIEW top_2_hits_do_momento AS
SELECT c.titulo AS 'cancao', COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.cancao AS c ON h.id_cancao = c.id_cancao
GROUP BY c.titulo
ORDER BY COUNT(*) DESC, c.titulo
LIMIT 2;
