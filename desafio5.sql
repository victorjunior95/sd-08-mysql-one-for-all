CREATE VIEW top_2_hits_do_momento AS
SELECT 
m.titulo AS 'cancao', COUNT(h.usuario_id) AS 'reproducoes'
FROM
SpotifyClone.musica m
INNER JOIN
SpotifyClone.historico h ON m.musica_id = h.musica_id
GROUP BY m.titulo
ORDER BY 2 DESC , 1
LIMIT 2;
