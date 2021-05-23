/* Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:
A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".
Será validado se existe uma VIEW chamada estatisticas_musicais 
que exibe os dados corretos nas colunas cancoes, artistas e albuns".
*/

DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
	SELECT 
      COUNT(DISTINCT songs.song_id) AS cancoes, 
      COUNT(DISTINCT artists.artist_id) AS artistas, 
      COUNT(DISTINCT albums.album_id) AS albums
  FROM 
    SpotifyClone.songs AS songs
    CROSS JOIN SpotifyClone.artists AS artists
    CROSS JOIN SpotifyClone.albums AS albums
-- https://www.w3schools.com/mysql/mysql_join_cross.asp
