DELIMITER $ 
CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(100))
  BEGIN
    SELECT 
    a.nome 'artista', 
    al.nome 'album'
    FROM artistas a 
    INNER JOIN albuns al ON al.artista_id = a.id
    WHERE a.nome = artista_nome
    ORDER BY al.nome ASC;
  END
$ 
DELIMITER ;
