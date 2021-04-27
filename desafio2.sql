CREATE VIEW estatisticas_musicais AS

SELECT
COUNT(DISTINCT c.cancao_id) AS 'cancoes',
COUNT(DISTINCT a.nome_artista) AS 'artistas',
COUNT(DISTINCT b.nome_album) AS 'albuns'
FROM cancoes AS c, artistas AS a, albuns AS b;
