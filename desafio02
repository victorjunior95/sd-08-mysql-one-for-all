CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT cc.nome_cancao) AS cancoes,
        COUNT(DISTINCT art.nome_artista) AS artistas,
        COUNT(DISTINCT al.nome_album) AS albuns
    FROM
        SpotifyClone.cancoesTB AS cc
            INNER JOIN
        SpotifyClone.albunsTB AS al
            INNER JOIN
        SpotifyClone.artistaTB AS art;
