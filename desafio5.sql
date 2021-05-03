CREATE VIEW top_2_hits_do_momento AS
SELECT `historico_de_reproducoes` AS `cancao`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.Historicos
GROUP BY `historico_de_reproducoes`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
