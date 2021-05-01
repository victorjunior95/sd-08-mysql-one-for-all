CREATE VIEW historico_reproducao_usuarios AS
SELECT 
sub.`usuario` AS 'usuario',
sub.`nome` AS 'nome'
FROM(
SELECT  m.musicaName AS 'nome', u.usuarioName  AS 'usuario' FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Musicas AS m
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.Usuarios AS u
ON u.usuario_id = h.usuario_id
) AS sub
ORDER BY 1,2;
--  FROM SpotifyClone.Historico ;
