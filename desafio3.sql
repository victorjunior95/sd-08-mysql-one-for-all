CREATE VIEW historico_reproducao_usuarios AS
SELECT
  U.name AS usuario,
  S.song_name AS nome
FROM SpotifyClone.listening_history AS LH
INNER JOIN SpotifyClone.songs AS S
  ON LH.song_id = S.song_id
INNER JOIN SpotifyClone.users AS U
  ON U.user_id = LH.user_id
ORDER BY 1, 2;
