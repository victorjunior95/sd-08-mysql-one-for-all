CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario, cancao AS nome
FROM SpotifyClone.historico_de_reproducoes AS hdr
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = hdr.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = hdr.cancao_id
ORDER BY usuario, nome;
