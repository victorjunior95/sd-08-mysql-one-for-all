CREATE VIEW historico_reproducao_usuarios AS
SELECT USER.Nome AS usuario,
CAN.Nome AS nome
FROM SpotifyClone.Usuario AS USER
INNER JOIN SpotifyClone.Historico_Musica_Usuario AS HIS ON HIS.Usuario_id = USER.Usuario_id
INNER JOIN SpotifyClone.Cancao AS CAN ON HIS.Cancao_id = CAN.Cancao_id
ORDER BY `usuario`, `nome`;
