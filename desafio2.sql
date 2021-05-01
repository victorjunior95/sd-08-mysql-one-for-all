CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT m.nome) AS cancoes,
        COUNT(DISTINCT a.nome) AS artistas,
        COUNT(DISTINCT al.nome) AS albuns
    FROM
        SpotifyClone.musicas AS m
            INNER JOIN
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.albuns AS al;

-- SELECT * FROM estatisticas_musicais;
