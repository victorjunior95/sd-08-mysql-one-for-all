-- DESAFIO 3
CREATE VIEW historico_reproducao_usuarios AS
SELECT
tbU.usuario_nome AS usuario,
tbM.musica_nome AS nome
FROM SpotifyClone.usuario AS tbU
INNER JOIN SpotifyClone.historico AS tbH
ON tbU.usuario_id = tbH.usuario_id
INNER JOIN SpotifyClone.musica AS tbM
ON tbH.musica_id = tbM.musica_id
ORDER BY tbU.usuario_nome, tbM.musica_nome;
