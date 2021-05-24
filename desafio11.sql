CREATE VIEW cancoes_premium AS
SELECT
musicas.musica_nome AS nome,
COUNT(usuario_historico.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.reproducao_user AS usuario_historico
ON musicas.musica_id = usuario_historico.musica_id
WHERE usuario_id IN (SELECT usuario_id
FROM SpotifyClone.usuarios
WHERE plano_id IN (2, 3))
GROUP BY nome
ORDER BY nome;
