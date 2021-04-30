CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario.usuario, cancao.cancao AS nome
FROM SpotifyClone.historico_de_reproducoes hreproducao
INNER JOIN SpotifyClone.cancoes cancao
ON cancao.cancao_id = hreproducao.cancao_id
INNER JOIN SpotifyClone.usuarios usuario 
ON usuario.usuario_id = hreproducao.usuario_id
ORDER BY usuario, cancao;
