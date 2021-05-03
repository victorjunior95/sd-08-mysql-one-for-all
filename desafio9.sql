DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT ar.nome AS `artista`, al.nome AS `album` FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS ar ON ar.artista_id = al.artista_id
WHERE ar.nome = 'Walter Phoenix'
ORDER BY al.nome;
END $$
DELIMITER ;
