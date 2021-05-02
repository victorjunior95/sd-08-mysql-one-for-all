CREATE VIEW top_2_hits_do_momento AS
SELECT mus.nome_musica cancao, COUNT(his.usuario_id) reproducoes
FROM SpotifyClone.musica mus
JOIN SpotifyClone.historico his ON his.musica_id = mus.musica_id
GROUP BY mus.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
