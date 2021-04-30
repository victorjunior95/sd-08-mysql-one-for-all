CREATE VIEW historico_reproducao_usuarios AS
SELECT 
U.usuario AS usuario,
C.cancao AS nome
FROM SpotifyClone.Usuarios as U 
INNER JOIN SpotifyClone.Historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.Cancoes as C
ON H.cancao_id = C.cancao_id
ORDER BY `usuario`,`nome`;
