DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(40))
  BEGIN
    SELECT 
    artistas.nome AS'artista', 
    albuns.nome AS 'album'
    FROM artistas 
    INNER JOIN albuns ON albuns.artista_id = artistas.id
    WHERE artistas.nome = artistaNome
    ORDER BY albuns.nome ASC;
  END
$$ 
DELIMITER ;
