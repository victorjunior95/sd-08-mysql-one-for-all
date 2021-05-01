CREATE VIEW top_2_hits_do_momento AS 
SELECT 
    m.musica_nome AS 'cancao',
    COUNT(hr.musica_id) AS 'reproducoes'
FROM
    SpotifyClone.historicoReproducao hr
        INNER JOIN
    SpotifyClone.musicas m ON m.musica_id = hr.musica_id
GROUP BY m.musica_nome
ORDER BY COUNT(hr.musica_id) DESC , m.musica_nome
LIMIT 2;
