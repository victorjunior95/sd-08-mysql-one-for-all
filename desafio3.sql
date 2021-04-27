CREATE VIEW estatisticas_musicais AS
SELECT u.nome AS 'usuario', c.titulo AS 'nome'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON h.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.cancao AS c ON h.id_cancao = c.id_cancao
ORDER BY u.nome, c.titulo;
