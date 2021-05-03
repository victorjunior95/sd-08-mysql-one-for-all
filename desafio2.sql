-- 2 - Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:
-- 		a) A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
-- 		b) A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
-- 		c) A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".
-- 	Sua VIEW deve retornar a seguinte informação ao ser consultada:
-- 		Estatísticas musicais
-- 	O que será verificado:
-- 		Será validado se existe uma VIEW chamada estatisticas_musicais que exibe os dados corretos
-- 		nas colunas cancoes, artistas e albuns".
CREATE VIEW estatisticas_musicais AS
SELECT (SELECT COUNT(*) FROM SpotifyClone.Single) AS 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.Artist) AS 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.Album) AS 'albuns';
