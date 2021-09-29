-- 6 - Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco,
-- queremos algumas informações sobre o faturamento da empresa. Crie uma VIEW chamada faturamento_atual
-- que deve exibir quatro dados:
-- 		a) A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente
-- 		para uma pessoa usuária.
-- 		b) A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente
-- 		para uma pessoa usuária.
-- 		c) A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos
-- 		possuídos por pessoas usuárias até o momento.
-- 		d) Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido
-- 		com os planos possuídos por pessuas usuárias.
-- 	Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento
-- 	usando apenas duas casas decimais.
-- 	Sua VIEW deve retornar a seguinte informação, ao ser consultada:
-- 		O que será verificado:
-- 		Será validado se existe uma VIEW chamada faturamento_atual, que exibe os dados corretos nas
-- 		colunas faturamento_minimo, faturamento_maximo, faturamento_medio e faturamento_total.
CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(ap.Price), 2) AS 'faturamento_minimo',
FORMAT(MAX(ap.Price), 2) AS 'faturamento_maximo',
ROUND(AVG(ap.Price), 2) AS 'faturamento_medio',
ROUND(SUM(ap.Price), 2) AS 'faturamento_total'
FROM SpotifyClone.User AS u
INNER JOIN SpotifyClone.AccessPlan AS ap ON u.PlanID = ap.PlanID;
