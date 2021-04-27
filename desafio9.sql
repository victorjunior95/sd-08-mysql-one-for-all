DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT 
A.nome AS 'artista',
B.nome AS 'album'
FROM SpotifyClone.artista A
JOIN SpotifyClone.album B ON A.artista_id = B.artista_id
WHERE A.nome = nome_artista
ORDER BY B.nome;
END

$$ DELIMITER ;
