CREATE VIEW historico_reproducao_usuarios AS
    SELECT u.name AS usuario, s.name AS nome 
    FROM SpotifyClone.histories AS h
    INNER JOIN SpotifyClone.users AS u ON h.user_id = u.id
    INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.id
    ORDER BY u.name, s.name;
