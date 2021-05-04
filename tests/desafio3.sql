-- Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:
-- A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
-- A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.
-- Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.
-- Sua VIEW deve retornar a seguinte informação, ao ser consultada:
CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario,
  M.musica_nome AS nome
FROM SpotifyClone.usuarios AS U
  INNER JOIN SpotifyClone.reproducoes AS R ON U.id = R.usuario_id
  INNER JOIN SpotifyClone.musicas AS M ON M.id = R.musica_id
ORDER BY U.usuario_nome,
  M.musica_nome;
