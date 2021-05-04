CREATE VIEW cancoes_premium AS
SELECT
  nome_cancao AS 'nome',
  COUNT(*) AS 'reproducoes'
FROM
  historico_reproducao AS hr
  INNER JOIN usuario AS u ON hr.id_usuario = u.id_usuario
  INNER JOIN plano AS p ON u.id_plano = p.id_plano
  INNER JOIN cancao AS c ON hr.id_cancao = c.id_cancao
WHERE
  p.nome_plano != 'gratuito'
GROUP BY
  `nome`
ORDER BY
  `nome`;
