/*
Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:
A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.
A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão seguindo aquela pessoa artista.
Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.
Será validado se existe uma VIEW chamada top_3_artistas que exibe os dados corretos nas colunas artista e seguidores".
Será validado se as colunas estão ordenadas de forma correta.
*/

CREATE VIEW top_3_artistas AS
	SELECT
		artists.artist_name AS artista,
		COUNT(followed.user_id) AS seguidores
	FROM 
		SpotifyClone.followed AS followed
	INNER JOIN
		SpotifyClone.artists AS artists
	ON 
		followed.artist_id = artists.artist_id
	GROUP BY 
		artista
  ORDER BY
		seguidores DESC
	LIMIT
		3
