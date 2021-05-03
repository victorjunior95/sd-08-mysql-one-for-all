CREATE VIEW historico_reproducao_usuarios AS 
	SELECT
      us.nome_usuario AS usuario,
      cc.nome_cancao AS cancoes
	FROM
      SpotifyClone.usuarioTB AS us
		      INNER JOIN
      SpotifyClone.cancoesTB AS cc
ORDER BY usuario, cancoes;   
-- SELECT * FROM historico_reproducao_usuarios;
