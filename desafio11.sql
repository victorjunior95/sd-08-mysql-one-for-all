CREATE VIEW cancoes_premium AS
SELECT CAN.Nome AS nome,
COUNT(HIS.Cancao_id) as reproducoes
FROM SpotifyClone.Cancao AS CAN
INNER JOIN SpotifyClone.Historico_Musica_Usuario AS HIS ON CAN.Cancao_id = HIS.Cancao_id
INNER JOIN SpotifyClone.Usuario AS USER ON USER.Usuario_id = HIS.Usuario_id
WHERE Plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
