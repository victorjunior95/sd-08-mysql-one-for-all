CREATE VIEW top_2_hits_do_momento AS 
SELECT
musica.musica AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Musicas AS musica
INNER JOIN SpotifyClone.Historico AS historico
ON musica.musica_id = historico.musica_id
GROUP BY cancao
ORDER BY 2 DESC, 1
LIMIT 2;
