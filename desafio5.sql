CREATE VIEW top_2_hits_do_momento AS
    SELECT c.cancao AS 'cancao', COUNT(hr.cancao_id) AS 'reproducoes'
    FROM SpotifyClone.Cancoes AS c
    INNER JOIN SpotifyClone.HistoricoReproducao AS hr
    ON hr.cancao_id = c.cancao_id
    GROUP BY hr.cancao_id
    ORDER BY `reproducoes` DESC, `cancao`
    LIMIT 2;
