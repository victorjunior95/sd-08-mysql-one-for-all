CREATE VIEW top_2_hits_do_momento AS
SELECT
musicas.musica_nome AS cancao,
COUNT(historico_reproducao.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.reproducao_user AS historico_reproducao
WHERE musicas.musica_id = historico_reproducao.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
