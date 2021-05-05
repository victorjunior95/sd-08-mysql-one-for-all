CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT c.cancao, COUNT(t.id_cancao) AS reproducoes
FROM cancoes AS c
INNER JOIN historicos AS t ON c.id_cancao = t.id_cancao
GROUP BY c.cancao
ORDER BY reproducoes DESC , c.cancao
LIMIT 2;
