CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.reproducoes r
ON m.musica_id = r.musica_id
INNER JOIN SpotifyClone.usuarios u
ON r.usuario_id = u.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY m.musica_nome
ORDER BY 1;
