CREATE VIEW top_2_hits_do_momento AS
    SELECT 
      cc.nome_cancao AS cancao, COUNT(*) AS reproducoes
    FROM
      SpotifyClone.cancoesTB AS cc INNER JOIN
      SpotifyClone.historicoTB AS his ON his.cancaoID = cc.cancaoID
GROUP BY cancao ORDER BY reproducoes DESC , cancao LIMIT 2;
-- SELECT * FROM top_2_hits_do_momento;
