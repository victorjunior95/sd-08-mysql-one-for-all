-- 11 - Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção
-- foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:
-- 		a) A primeira coluna deve exibir o nome da canção, com o alias "nome";
-- 		b) A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias
-- 		"reproducoes";
-- 		c) Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.
-- 	Sua VIEW deve retornar a seguinte informação, ao ser consultada:
-- 	O que será verificado:
-- 		Será validado se existe uma VIEW chamada cancoes_premium, que exibe os dados corretos nas
-- 		colunas nome e reproducoes.
-- 		Será validado se as colunas estão ordenadas de forma correta.
CREATE VIEW cancoes_premium AS
SELECT s.Title AS nome, COUNT(h.UserID) AS reproducoes
FROM SpotifyClone.Single AS s
INNER JOIN SpotifyClone.User AS u ON u.PlanID IN (2, 3)
INNER JOIN SpotifyClone.Historic AS h ON s.SingleID = h.SingleID AND h.UserID = u.UserID
GROUP BY s.Title
ORDER BY s.Title;
