CREATE VIEW  top_2_hits_do_momento AS
SELECT M.musica_nome AS 'cancao',COUNT(H.musica_id) AS 'reproducoes' FROM SpotifyClone.Musicas AS M INNER JOIN SpotifyClone.Historico AS H ON M.musica_id = H.musica_id GROUP BY cancao ORDER BY reproducoes DESC,cancao LIMIT 2;
