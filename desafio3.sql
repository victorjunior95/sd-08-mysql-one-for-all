CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.usuario AS usuario,
    c.cancao as nome
  FROM usuario u
  INNER JOIN historico_de_reproducoes hr
    ON hr.usuario_id = u.usuario_id
  INNER JOIN cancao c
    ON c.cancao_id = hr.cancao_id
  ORDER BY u.usuario, c.cancao;
