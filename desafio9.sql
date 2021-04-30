DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(100))
BEGIN
SELECT nome AS artista, titulo AS album
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.album al
ON a.artista_id = al.artista_id
WHERE a.nome = artista_nome;
END $$

DELIMITER ;
