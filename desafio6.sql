CREATE VIEW faturamento_atual AS
SELECT
MIN(cont_serv.service_price) AS 'faturamento_minimo',
MAX(cont_serv.service_price) AS 'faturamento_maximo',
FORMAT(AVG(cont_serv.service_price), 2) AS 'faturamento_medio',
SUM(cont_serv.service_price) AS 'faturamento_total'
FROM SpotifyClone.ContractService AS cont_serv
INNER JOIN SpotifyClone.User AS user
ON cont_serv.service_id = user.service_id;
