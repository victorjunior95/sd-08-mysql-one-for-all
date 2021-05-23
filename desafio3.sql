/* Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:
A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.
Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.
Será validado se existe uma VIEW chamada historico_reproducao_usuarios que exibe os dados corretos nas colunas usuario e nome".
Será validado se as colunas estão ordenadas de forma correta.
*/

DROP VIEW IF EXISTS historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS
  SELECT
      users.user_name AS usuario,
      songs.song_name AS nome 
    FROM 
      SpotifyClone.history AS history
    INNER JOIN
      SpotifyClone.users AS users
    ON 
      users.user_id = history.user_id
    INNER JOIN
      SpotifyClone.songs AS songs
    ON 
      songs.song_id = history.song_id
      ORDER BY usuario;
