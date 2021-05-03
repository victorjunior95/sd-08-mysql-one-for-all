
CREATE VIEW SpotifyClone.faturamento_atual AS
 ;




SELECT CAST(MIN(mi.valor_plano) AS DECIMAL(10, 2)) AS faturamento_minimo , MAX(mi.valor_plano) AS faturamento_maximo,
CAST(AVG(mi.valor_plano) AS DECIMAL(10 ,2)) AS faturamento_medio, CAST(SUM(mi.valor_plano) AS DECIMAL(10, 2)) AS faturamento_total
FROM SpotifyClone._planos AS mi;




 (SUM(tt.valor_plano),2) AS faturamento_total

, SpotifyClone._planos AS ma, SpotifyClone._planos AS me, SpotifyClone._planos AS tt


CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.artista AS artista, count(u.artista_id) AS seguidores
FROM SpotifyClone._artistas AS a
inner join SpotifyClone._seguindo AS u on a.artista_id = u.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;
