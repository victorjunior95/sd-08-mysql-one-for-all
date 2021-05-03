-- 3 - Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:
-- 		a) A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
-- 		b) A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com
-- 		base no seu histórico de reprodução.
-- 		c) Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso
-- 		de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.
-- 	Sua VIEW deve retornar a seguinte informação, ao ser consultada:
-- 	O que será verificado:
-- 		Será validado se existe uma VIEW chamada historico_reproducao_usuarios que exibe os dados
-- 		corretos nas colunas usuario e nome".
-- 		Será validado se as colunas estão ordenadas de forma correta.
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.Name AS 'usuario', s.Title AS 'nome'
FROM SpotifyClone.User AS u
INNER JOIN SpotifyClone.Historic AS h ON u.UserID = h.UserID
INNER JOIN SpotifyClone.Single AS s ON s.SingleID = h.SingleID
ORDER BY u.Name, s.Title;
