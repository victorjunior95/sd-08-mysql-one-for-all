USE SpotifyClone ;
CREATE VIEW top_3_artistas AS
SELECT m.artista AS artistas, COUNT(u.usuario_id) AS seguidores
FROM SpotifyClone._artistas AS m, SpotifyClone._usuarios AS u
GROUP BY artistas;



SELECT m.artista AS artistas, COUNT(u.usuario_id) AS seguidores
FROM SpotifyClone._artistas AS m, SpotifyClone._usuarios AS u
GROUP BY artistas;
-- era para vir o dado de _seguindo

USE SpotifyClone ;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, m.cancoes AS nome FROM SpotifyClone._usuarios AS u
INNER JOIN SpotifyClone._historico AS h ON  u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone._musicas AS m ON m.cancoes_id = h.cancoes_id
ORDER BY usuario;