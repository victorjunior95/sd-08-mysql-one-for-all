CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT 
  COUNT(distinct mus.nome_musica) cancoes,
  COUNT(distinct art.nome_artista) artistas,
  COUNT(distinct alb.nome_album) albuns
FROM SpotifyClone.musica mus, SpotifyClone.artista art, SpotifyClone.album alb;
