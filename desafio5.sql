CREATE VIEW top_2_hits_do_momento AS
SELECT M.nome_musica AS 'cancao', COUNT(H.usuario_ID) AS 'reproducoes' 
FROM SpotifyClone.historico_reproducoes AS H
INNER JOIN SpotifyClone.musica AS M 
ON M.musica_ID = H.musica_ID
GROUP BY M.musica_ID
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
