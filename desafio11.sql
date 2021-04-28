

SELECT * FROM SpotifyClone.usuario;

SELECT * FROM SpotifyClone.cancoes;
SELECT * FROM SpotifyClone.historico_reproducoes;
SELECT * FROM SpotifyClone.plano;



SELECT c.nome_cancao AS 'nome', h.usuario_id AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.cancoes_id = c.cancoes_id;



SELECT c.nome_cancao AS 'nome',
(SELECT h.usuario_id FROM SpotifyClone.historico_reproducoes AS h) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c;
