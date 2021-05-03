CREATE VIEW historico_reproducao_usuarios AS
  SELECT Usuario.usuario AS usuario, Cancao.Cancao as nome FROM Usuario
  INNER JOIN Historico_Cancao history
  ON history.Usuario_id = Usuario.Usuario_id
  INNER JOIN Cancao c
  ON Cancao.Cancao_id = history.Cancao_id
  ORDER BY Usuario.Nome, Cancao.Nome;
  