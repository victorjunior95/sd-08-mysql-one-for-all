USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario,
c.cancao AS nome
FROM historico_de_reproducoes h
INNER JOIN usuarios u ON h.usuario_id = u.usuario_id
INNER JOIN cancoes c ON h.cancao_id = c.cancao_id
ORDER BY usuario, nome;
