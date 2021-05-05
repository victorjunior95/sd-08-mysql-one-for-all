CREATE VIEW cancoes_premium AS
SELECT m.cancoes AS nome, count(h.cancoes_id) AS reproducoes
FROM SpotifyClone._musicas AS m
inner join SpotifyClone._historico AS h on m.cancoes_id = h.cancoes_id
inner join SpotifyClone._usuarios as u on u.usuario_id = h.usuario_id
WHERE u.plano_id <> 1
GROUP BY nome ORDER BY nome;
