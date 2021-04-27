CREATE VIEW `faturamento_atual` AS
SELECT
(SELECT MIN(`subscription_price`) FROM `SpotifyClone`.`subscription`) AS `faturamento_minimo`,
(SELECT MAX(`subscription_price`) FROM `SpotifyClone`.`subscription`) AS `faturamento_maximo`,
(SELECT ROUND(AVG(`subscription_price`), 2) 
FROM `SpotifyClone`.`user` AS U
INNER JOIN `SpotifyClone`.`subscription` AS S ON S.subscription_id = U.subscription_id) AS `faturamento_medio`,
(SELECT ROUND(SUM(`subscription_price`), 2) 
FROM `SpotifyClone`.`user` AS U
INNER JOIN `SpotifyClone`.`subscription` AS S ON S.subscription_id = U.subscription_id) AS `faturamento_total`;
