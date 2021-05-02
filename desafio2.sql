CREATE VIEW estatisticas_musicais AS
  SELECT COUNT(*) AS 'cancoes',
  (SELECT COUNT(*) FROM Artista) AS 'artistas',
  (SELECT COUNT(*) FROM Album) AS 'albuns'
FROM Cancao AS c;
