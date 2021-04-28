CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
GROUP BY nome, u.plano_id
HAVING u.plano_id IN (SELECT p.plano_id FROM SpotifyClone.plano AS p WHERE p.plano IN ("familiar", "universitario"))
ORDER BY nome;
