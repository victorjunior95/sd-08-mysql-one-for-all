CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        (SELECT 
                musicas.nome
            FROM
                SpotifyClone.musicas
            WHERE
                musicas.id = historico.musica_id) AS 'cancao',
        COUNT(historico.musica_id)  AS 'reproducoes'
    FROM
        SpotifyClone.historico
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
