create view top_2_hits_do_momento as
select m.musica as `cancao`, count(h.usuario_id) as `reproducoes` from SpotifyClone.musicas m
inner join SpotifyClone.historico_reproducoes h on m.musica_id = h.musica_id
group by `cancao` order by `reproducoes` desc, `cancao` asc limit 2;
