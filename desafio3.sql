CREATE VIEW historico_reproducao_usuarios AS 
    SELECT
      us.nome_usuario AS usuario,
      cc.nome_cancao AS nome
    FROM
      SpotifyClone.usuarioTB AS us INNER JOIN
      SpotifyClone.historicoTB AS his ON his.usuarioID = us.usuarioID INNER JOIN
      SpotifyClone.cancoesTB AS cc ON cc.cancaoID = his.cancaoID
ORDER BY usuario, nomegi ;   
-- SELECT * FROM historico_reproducao_usuarios;
