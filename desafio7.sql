CREATE VIEW perfil_artistas AS
    SELECT 
      art.nome_artista AS artista,
      alb.nome_album AS album,
      COUNT(seg.artistaID) AS seguidores
    FROM
      SpotifyClone.artistaTB AS art INNER JOIN
      SpotifyClone.albunsTB AS alb ON alb.artistaID = art.artistaID INNER JOIN
      SpotifyClone.seguidoresTB AS seg ON seg.artistaID = art.artistaID
GROUP BY artista , album ORDER BY seguidores DESC , artista , album;

-- SELECT * FROM perfil_artistas;
