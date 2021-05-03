CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT M.musica_nome AS cancao, COUNT(S.musica_id) AS reproducoes
FROM SpotifyClone.historico AS S
INNER JOIN SpotifyClone.musicas AS M
ON S.musica_id = M.musica_id
GROUP BY S.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
