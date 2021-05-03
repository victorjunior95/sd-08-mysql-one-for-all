CREATE VIEW estatisticas_musicais AS
SELECT
    (
        SELECT
            COUNT(nome_cancao)
        FROM
            cancao
    ) AS cancoes,
    (
        SELECT
            COUNT(nome_artista)
        FROM
            artista
    ) AS artistas,
    (
        SELECT
            COUNT(nome_album)
        FROM
            album
    ) AS albuns;
