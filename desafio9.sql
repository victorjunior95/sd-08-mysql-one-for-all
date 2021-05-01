DELIMITER @|
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
-- instrução da stored procedure
SELECT 
    a.nome AS artista,
    al.nome AS album
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS al ON al.artista_id = a.id
WHERE
    a.nome = nome_artista;
END
@| DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
