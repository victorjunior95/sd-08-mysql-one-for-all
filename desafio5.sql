CREATE VIEW top_2_hits_do_momento AS
SELECT 
sub.`cancao` AS 'cancao',
sub.`reproducoes` AS 'reproducoes'
FROM(
SELECT  m.musicaName AS 'cancao', COUNT( h.musica_id )  AS 'reproducoes' FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Musicas AS m
ON m.musica_id = h.musica_id
GROUP BY h.musica_id
) AS sub
ORDER BY 2 DESC, 1 LIMIT 2;
