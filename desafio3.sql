CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario', c.cancao AS 'nome'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios AS u ON h.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.cancoes AS c ON h.id_cancao = c.id_cancao
ORDER BY u.usuario, c.cancao;
