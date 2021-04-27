CREATE VIEW historico_reproducao_usuarios AS

SELECT
u.nome_usuario AS 'usuario',
c.nome_cancao AS 'nome'
FROM usuarios AS u
INNER JOIN historico AS h
ON u.usuario_id  = h.usuario_id
INNER JOIN cancoes AS c
ON c.cancao_id = h.cancao_id
ORDER BY 1, 2;
