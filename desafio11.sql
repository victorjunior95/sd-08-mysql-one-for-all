CREATE VIEW cancoes_premium AS 
SELECT
  c.cancao AS 'nome',
  COUNT(*) as 'reproducoes'
FROM cancao c
INNER JOIN historico_de_reproducoes rp
ON rp.cancao_id = c.cancao_id
INNER JOIN usuario u
ON u.usuario_id = rp.usuario_id
INNER JOIN plano p
ON p.plano_id = u.plano_id
WHERE p.plano = 'familiar' OR p.plano = 'universitario'
GROUP BY `nome`
ORDER BY `nome`;
