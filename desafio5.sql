/* 
Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas 
mais tocadas no momento. Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:
A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
A segunda coluna deve possuir o alias "reproducoes" e 
exibir a quantidade de pessoas que já escutaram a canção em questão.
Seu resultado deve estar ordenado em ordem decrescente, 
baseando-se no número de reproduções. 
Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. 
Queremos apenas o top 2 de músicas mais tocadas.
Será validado se existe uma VIEW chamada top_2_hits_do_momento, 
que exibe os dados corretos nas colunas cancao e reproducoes".
Será validado se as colunas estão ordenadas de forma correta.
*/

CREATE VIEW top_2_hits_do_momento AS
  SELECT 
      songs.song_name AS cancao, 
      COUNT(history.song_id) AS reproducoes
  FROM
      SpotifyClone.songs AS songs
  INNER JOIN
      SpotifyClone.history AS history 
  ON 
      songs.song_id = history.song_id
  GROUP BY 
      cancao
  ORDER BY 
      reproducoes DESC, cancao
  LIMIT 2;
