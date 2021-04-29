CREATE VIEW cancoes_premium AS
  SELECT
    song AS nome,
    count(*) AS reproducoes
  FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.reproductions AS r ON s.song_id = r.song_id
  INNER JOIN SpotifyClone.users AS u ON r.user_id = u.user_id
  WHERE plan_id = 2 OR plan_id = 3
  GROUP BY nome
  ORDER BY nome;
