DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN busca VARCHAR(100))
BEGIN
SELECT
a.nome_artista AS 'artista',
b.nome_album AS 'album'
FROM artistas AS a
INNER JOIN albuns AS b
ON a.artista_id = b.artista_id
WHERE a.nome_artista LIKE CONCAT('%',busca,'%')
ORDER BY 1;
END
$$
DELIMITER ;
