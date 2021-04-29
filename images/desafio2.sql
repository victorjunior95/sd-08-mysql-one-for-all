CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(*)
            FROM
                song) AS `cancoes`,
            FROM
                album) AS `albuns`;
                