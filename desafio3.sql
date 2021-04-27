CREATE VIEW historico_reproducao_usuarios AS
SELECT
usua.nome AS usuario,
canc.nome AS nome
FROM SpotifyClone.usuarios AS usua
INNER JOIN SpotifyClone.historico_reproducoes AS hist ON hist.usuario_id = usua.usuario_id
INNER JOIN SpotifyClone.cancoes AS canc ON canc.cancao_id = hist.cancao_id
ORDER BY usuario, nome;
