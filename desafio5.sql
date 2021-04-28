CREATE VIEW top_2_hits_do_momento AS
SELECT C.nome_cancao cancao, COUNT(*) reproducoes
FROM historico H
INNER JOIN cancoes C ON C.cancao_id = H.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
