CREATE VIEW historico_reproducao_usuarios AS
SELECT USER.Nome AS 'usuario',
CAN.Nome AS 'nome'
FROM SpotifyClone.Historico_Musica_Usuario AS HIS
INNER JOIN SpotifyClone.Cancao AS CAN ON HIS.Cancao_id = CAN.Cancao_id
INNER JOIN SpotifyClone.Usuario AS USER ON HIS.Usuario_id = USER.Usuario_id
ORDER BY `usuario`, `nome`;
