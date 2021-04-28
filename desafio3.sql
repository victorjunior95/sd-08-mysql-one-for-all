CREATE VIEW estatisticas_musicais AS
SELECT usuario, nome_cancao 'nome'
FROM historico H
INNER JOIN usuarios U ON U.usuario_id = H.usuario_id
INNER JOIN cancoes C ON C.cancao_id = H.cancao_id
ORDER BY usuario, nome_cancao;
