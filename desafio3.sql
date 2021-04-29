CREATE VIEW historico_reproducao_usuarios AS
SELECT U.Nome AS `usuario`,
M.Nome AS `nome`
FROM HistoricoDeMusicas H
INNER JOIN Users U
ON H.idUser = U.idUser
INNER JOIN Musicas M
ON H.idMusica = M.idMusica
ORDER BY `usuario`, `nome`;
