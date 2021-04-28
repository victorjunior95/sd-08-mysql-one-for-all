CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(hdr.cancao_id) AS reproducoes
FROM historico_de_reproducoes AS hdr
JOIN cancao AS c ON c.cancao_id = hdr.cancao_id
INNER JOIN usuario AS u ON u.usuario_id = hdr.usuario_id
INNER JOIN plano AS p ON u.plano_id = p.plano_id
WHERE p.plano = "familiar" OR p.plano = "universitário"
GROUP BY hdr.cancao_id
ORDER BY nome;
