-- 4 - Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas
-- mais populares no banco SpotifyClone, possuindo as seguintes colunas:
-- 		a) A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.
-- 		b) A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão
-- 		seguindo aquela pessoa artista.
-- 		c) Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores.
-- 		Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.
-- 	Sua VIEW deve retornar a seguinte informação, ao ser consultada:
-- 	O que será verificado:
-- 		Será validado se existe uma VIEW chamada top_3_artistas que exibe os dados corretos nas
-- 		colunas artista e seguidores".
-- 		Será validado se as colunas estão ordenadas de forma correta.
CREATE VIEW top_3_artistas AS
SELECT a.Name AS artista, COUNT(f.UserID) AS seguidores
FROM SpotifyClone.Favorited AS f
INNER JOIN SpotifyClone.Artist AS a ON f.ArtistID = a.ArtistID
GROUP BY a.Name
ORDER BY COUNT(f.UserID) DESC, a.Name LIMIT 3;
