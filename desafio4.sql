CREATE VIEW top_3_artistas AS
	SELECT a.name AS artista, count(f.artist_id) AS seguidores
    FROM spotifyclone.artists AS a
    INNER JOIN spotifyclone.user_follows AS f ON a.id = f.artist_id
    GROUP BY a.name
    ORDER BY count(f.artist_id) DESC, a.name
    LIMIT 3;
