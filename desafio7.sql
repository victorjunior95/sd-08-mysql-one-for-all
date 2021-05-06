-- 7 - Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de
-- seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma VIEW chamada
-- perfil_artistas, com as seguintes colunas:
-- 		a) A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
-- 		b) A segunda coluna deve exibir o nome do álbum, com o alias "album".
-- 		c) A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui
-- 		e deve possuir o alias "seguidores".
-- 		d) Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas
-- 		seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa
-- 		artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo
-- 		nome do álbum alfabeticamente.
-- 	Sua VIEW deve retornar a seguinte informação, ao ser consultada:
-- 	O que será verificado:
-- 		Será validado se existe uma VIEW chamada perfil_artistas, que exibe os dados corretos nas
-- 		colunas artista, album e seguidores.
-- 		Será validado se as colunas estão ordenadas de forma correta.
CREATE VIEW perfil_artistas AS
SELECT a.Name AS artista, ab.Title AS album, COUNT(f.UserID) AS seguidores
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Album AS ab ON a.ArtistID = ab.ArtistID
INNER JOIN SpotifyClone.Favorited AS f ON f.ArtistID = a.ArtistID
GROUP BY a.Name, ab.Title
ORDER BY COUNT(f.UserID) DESC, a.Name, ab.Title;
