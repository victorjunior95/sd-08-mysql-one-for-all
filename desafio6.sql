create view faturamento_atual as 
select round(min(p.valor), 2) as `faturamento_minimo`, round(max(p.valor), 2) as `faturamento_maximo`,
round(avg(p.valor), 2) as `faturamento_medio`,
round(sum(p.valor), 2) as `faturamento_total` from SpotifyClone.planos p
inner join SpotifyClone.usuarios u on p.plano_id = u.plano_id;
