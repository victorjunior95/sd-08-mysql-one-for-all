CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(c.cancao) AS cancoes,
    COUNT(DISTINCT a.artista) AS artistas,
    COUNT(DISTINCT al.album) AS albuns
  FROM cancao c
  INNER JOIN album al
    ON al.album_id = c.album_id
  INNER JOIN artista a
    ON a.artista_id = al.artista_id;
