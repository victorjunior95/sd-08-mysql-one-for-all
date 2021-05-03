CREATE VIEW top_3_artistas AS
    SELECT 
      art.nome_artista AS artista, COUNT(*) AS seguidores
    FROM
      SpotifyClone.artistaTB AS art INNER JOIN
      SpotifyClone.seguidoresTB AS seg ON seg.artistaID = art.artistaID
GROUP BY artista ORDER BY seguidores DESC , artista LIMIT 3;

-- SELECT * FROM top_3_artistas;
-- tive auxilio da aluna ana karine 
-- https://github.com/tryber/sd-08-mysql-one-for-all/tree/ana-karine-mysql-one-for-all
