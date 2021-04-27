USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT 
u.nome AS `usuario`,
c.nome AS `nome`
FROM usuarios AS u
INNER JOIN historico_de_reproducoes AS hr
ON hr.usuario_id = u.usuario_id
INNER JOIN cancoes AS c
ON c.cancao_id = hr.cancao_id
ORDER BY `usuario`, `nome`;
