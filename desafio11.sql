CREATE VIEW cancoes_premium AS
SELECT
musica.musica AS 'nome',
COUNT(historico.musica_id) AS 'reproducoes'
FROM SpotifyClone.Musicas AS musica
INNER JOIN SpotifyClone.Historico AS historico
ON historico.musica_id = musica.musica_id
INNER JOIN SpotifyClone.Usuario AS user
ON user.usuario_id = historico.usuario_id
WHERE user.plano_id IN (2, 3)
GROUP BY musica.musica
ORDER BY 1;
