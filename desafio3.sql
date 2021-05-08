CREATE VIEW historico_reproducao_usuarios AS
SELECT
user.usuario AS 'usuario',
cancoes.musica AS 'nome'
FROM Usuario AS user
INNER JOIN Historico AS historico
ON user.usuario_id = historico.usuario_id
INNER JOIN cancoes AS cancoes
ON cancoes.musica_id = historico.musica_id
ORDER BY 1, 2;
