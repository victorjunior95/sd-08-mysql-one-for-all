CREATE VIEW historico_reproducao_usuarios AS
SELECT su.usuario AS 'usuario', sc.cancao AS 'nome' 
FROM SpotifyClone.historico_de_reproducoes AS sr
INNER JOIN SpotifyClone.usuarios AS su
ON sr.usuario_id = su.usuario_id
INNER JOIN SpotifyClone.cancoes AS sc
ON sr.cancao_id = sc.cancao_id
ORDER BY `usuario`, `nome`;
