-- https://stackoverflow.com/questions/5528854/usage-of-mysqls-if-exists
-- https://stackoverflow.com/questions/8130110/mysql-avg-on-conditional
CREATE VIEW faturamento_atual AS
--   SELECT
--   ( SELECT FORMAT(MIN(valorPlano),2) FROM SpotifyClone.Planos ) AS 'faturamento_minimo',
--   ( SELECT FORMAT(MIN(valorPlano),2) FROM SpotifyClone.Planos )  AS 'faturamento_maximo',
  
--  ( SELECT FORMAT(AVG(CASE WHEN  p.plano_id = u.plano_id then p.valorPlano ELSE 0 END ),2)  FROM SpotifyClone.Usuarios AS u, SpotifyClone.Planos AS p ) 
--   AS 'faturamento_medio',

(SELECT 
sub.`minimo` AS 'faturamento_minimo',
sub.`maximo` AS 'faturamento_maximo',
sub.`medio` AS 'faturamento_medio',
sub.`total` AS 'faturamento_total'
FROM(
SELECT  
FORMAT(MIN(valorPlano),2) AS 'minimo',
FORMAT(MAX(valorPlano),2) AS 'maximo',
ROUND(AVG( p.valorPlano),2) AS 'medio',
FORMAT(SUM(valorPlano),2) AS 'total'
FROM  SpotifyClone.Usuarios AS u
INNER JOIN  SpotifyClone.Planos AS  p
ON u.plano_id = p.plano_id 
) AS sub )
--  ( SELECT FORMAT(SUM(valorPlano),2) FROM SpotifyClone.Planos)  AS 'faturamento_total';


-- Error Code: 1064. You have an error in your SQL syntax; 
-- check the manual that corresponds to your MySQL server version for the right syntax to use near ',2)) 
-- FROM SpotifyClone.Planos AS p )  --   AS 'faturamento_medio', --   ( SELECT' at line 1
