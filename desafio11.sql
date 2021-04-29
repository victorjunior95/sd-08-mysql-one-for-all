CREATE VIEW cancoes_premium AS
  SELECT
    S.song AS nome,
    COUNT(*) AS reproducoes
  FROM SpotifyClone.songs AS S
  INNER JOIN SpotifyClone.history AS H ON S.song_id = H.song_id
  INNER JOIN SpotifyClone.users AS U ON H.user_id = U.user_id
  GROUP BY nome, U.plan_id
  HAVING
    U.plan_id IN (
      SELECT P.plan_id
      FROM SpotifyClone.plans AS P
      WHERE P.plan IN ("family", "student")
    )
  ORDER BY nome;
