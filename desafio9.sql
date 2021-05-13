DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN buscaNome VARCHAR(30))
  BEGIN
    SELECT 
    artista.nome 'artista', 
    albuns.nome 'album'
    FROM artistas
    INNER JOIN albuns ON albuns.artista_id = artista.id
    WHERE artista.nome = buscaNome
    ORDER BY albuns.nome ASC ;
  END
$$ 
DELIMITER ;
