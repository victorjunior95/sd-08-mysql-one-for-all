create view cancoes_premium as 
select m.musica as nome, count(hr.musica_id) as reproducoes from SpotifyClone.musicas m
inner join SpotifyClone.historico_reproducoes hr on m.musica_id = hr.musica_id
inner join SpotifyClone.usuarios u on u.usuario_id = hr.usuario_id
where u.plano_id in (2, 3) group by m.musica
order by m.musica;
