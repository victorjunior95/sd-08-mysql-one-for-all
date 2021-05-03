CREATE VIEW cancoes_premium AS
SELECT cancao.cancao AS nome, 
COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS cancao
INNER JOIN SpotifyClone.historico_de_reproducoes AS hreproducao
ON cancao.cancao_id = hreproducao.cancao_id
INNER JOIN
(
SELECT usuario.usuario_id
FROM SpotifyClone.usuarios AS usuario
INNER JOIN SpotifyClone.planos AS plano
ON usuario.plano_id = plano.plano_id
WHERE plano.plano != 'gratuito'
) AS fusuario
ON hreproducao.usuario_id = fusuario.usuario_id
GROUP BY cancao.cancao
ORDER BY cancao.cancao;
