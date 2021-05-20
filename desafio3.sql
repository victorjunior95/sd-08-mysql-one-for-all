CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.titulo AS nome
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN usuario u ON u.usuario_id = hr.usuario_id
INNER JOIN cancoes c ON c.cancoes_id = hr.cancoes_id
ORDER BY 1, 2;
