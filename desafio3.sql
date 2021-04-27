CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.usuario AS usuario,
c.nome_da_cancao AS nome
FROM SpotifyClone.Usuario AS u
INNER JOIN Historico_reproducoes AS hr
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancoes_id = hr.cancoes_id
ORDER BY usuario, nome;
