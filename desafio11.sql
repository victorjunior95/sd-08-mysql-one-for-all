CREATE VIEW cancoes_premium AS
SELECT C.nome_cancao nome, COUNT(*) reproducoes
FROM cancoes C
INNER JOIN historico H ON C.cancao_id = H.cancao_id
INNER JOIN usuarios U ON U.usuario_id = H.usuario_id
GROUP BY nome, U.plano_id
HAVING U.plano_id IN (SELECT P.plano_id FROM plano P WHERE P.plano_id IN (2, 3))
ORDER BY nome;
