-- DESAFIO 9
USE SpotifyClone;
DELIMITER !!

CREATE PROCEDURE albuns_do_artista (IN nome_do_artista VARCHAR(50))

BEGIN
SELECT 
CONCAT(tbA.artista_nome, ' ', tbA.artista_sobrenome) AS artista,
tbAL.album_nome AS album
FROM SpotifyClone.artista AS tbA
INNER JOIN SpotifyClone.album AS tbAL
ON tbA.artista_id = tbAL.artista_id
WHERE CONCAT(tbA.artista_nome, ' ', tbA.artista_sobrenome) = nome_do_artista;

END !!
DELIMITER ;
