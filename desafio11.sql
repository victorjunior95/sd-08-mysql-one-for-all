-- https://stackoverflow.com/questions/5528854/usage-of-mysqls-if-exists
-- https://stackoverflow.com/questions/8130110/mysql-avg-on-conditional
CREATE VIEW cancoes_premium AS
SELECT 
sub.`nome` AS 'nome',
sub.`reproducoes` AS 'reproducoes'
FROM(
SELECT   m.musicaName AS 'nome', COUNT(h.musica_id) AS 'reproducoes' FROM  SpotifyClone.Musicas AS m
INNER JOIN  SpotifyClone.Usuarios AS  u 
ON u.plano_id IN (2,3)
INNER JOIN  SpotifyClone.Historico AS  h
ON h.musica_id = m.musica_id AND h.usuario_id = u.usuario_id
GROUP BY m.musicaName
) AS sub 
ORDER BY 1;
