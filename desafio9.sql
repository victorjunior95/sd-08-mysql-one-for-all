DELIMITER $$ CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(25)) BEGIN SELECT A.artista_nome AS artista, ALB.album_nome AS album FROM SpotifyClone.artistas AS A INNER JOIN SpotifyClone.albuns AS ALB ON ALB.artista_id = A.artista_id WHERE A.artista_nome = nome
ORDER BY ALB.album_nome;
END $$ DELIMITER;
