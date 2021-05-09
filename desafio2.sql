-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql
-- https://www.w3schools.com/sql/sql_view.asp
-- "FAZ UMA TABELA"
CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.musicas) AS cancoes,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.artistas) AS artistas,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.albuns) AS albuns;
                