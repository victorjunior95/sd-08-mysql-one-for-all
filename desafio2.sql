CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT M.musica_nome) AS 'cancoes', COUNT(DISTINCT ART.artista_nome) AS 'artistas', COUNT(DISTINCT A.album_nome) AS 'albuns' FROM SpotifyClone.Musicas AS M INNER JOIN SpotifyClone.Albums AS A ON M.album_id = A.album_id INNER JOIN SpotifyClone.Artistas AS ART ON A.artista_id = ART.artista_id ;
