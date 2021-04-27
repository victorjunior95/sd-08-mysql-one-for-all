CREATE VIEW top_2_hits_do_momento AS
  SELECT
    c.cancao AS 'cancao',
    COUNT(hr.cancao_id) AS 'reproducoes'
  FROM cancao c
  INNER JOIN historico_de_reproducoes hr
  ON hr.cancao_id = c.cancao_id
  GROUP BY c.cancao
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
  