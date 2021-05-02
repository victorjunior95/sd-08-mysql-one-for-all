CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(*) AS reproducoes
FROM historico_de_reproducoes h
INNER JOIN cancoes c ON h.cancao_id = c.cancao_id
INNER JOIN usuarios u ON h.usuario_id = u.usuario_id
INNER JOIN planos p ON p.plano_id = u.plano_id
WHERE p.plano IN ('familiar', 'universitário')
GROUP BY h.cancao_id
ORDER BY nome;
