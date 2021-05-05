CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.usuario, c.cancao AS 'nome'
FROM usuarios u
INNER JOIN historicos h ON u.id_usuario = h.id_usuario
INNER JOIN cancoes c ON h.id_cancao = c.id_cancao
ORDER BY u.usuario , c.cancao;
