CREATE VIEW cancoes_premium AS
SELECT m.musica AS `nome`, COUNT(um.usuario_id) AS `reproducoes`
FROM SpotifyClone.usuarios_musicas AS um
INNER JOIN SpotifyClone.musicas AS m
ON um.musica_id = m.musica_id
INNER JOIN SpotifyClone.usuarios AS u
ON um.usuario_id = u.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY m.musica
ORDER BY `nome`;
