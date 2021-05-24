/*
Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, 
com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. 
Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:
A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
A segunda coluna deve exibir o nome do álbum, com o alias "album".
A terceira coluna deve exibir a quantidade de pessoas seguidoras 
que aquela pessoa artista possui e deve possuir o alias "seguidores".
Seus resultados devem estar ordenados de forma decrescente, 
baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.
Será validado se existe uma VIEW chamada perfil_artistas, 
que exibe os dados corretos nas colunas artista, album e seguidores.
Será validado se as colunas estão ordenadas de forma correta.


DROP VIEW IF EXISTS perfil_artistas;

CREATE VIEW perfil_artistas AS
	SELECT 
		artists.artist_name AS artista,
    COUNT(followed.artist_id) AS seguidores
	FROM 
		SpotifyClone.artists AS artists
	INNER JOIN 
		SpotifyClone.followed AS followed
	ON 
		artists.artist_id = followed.artist_id

*/
