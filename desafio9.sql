DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(40))
  BEGIN
    SELECT 
    artistas.nome 'artista', 
    albuns.nome 'album'
    FROM artistas 
    INNER JOIN albuns ON albuns.artista_id = artistas.id
    WHERE artistas.nome = artistaNome
    ORDER BY albuns.nome ASC;
  END
$$ 
DELIMITER ;
