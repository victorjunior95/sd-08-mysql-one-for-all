create view historico_reproducao_usuarios as 
select u.nome as usuario, m.musica as nome from SpotifyClone.usuarios u 
inner join SpotifyClone.historico_reproducoes h on u.usuario_id = h.usuario_id
inner join musicas m on m.musica_id = h.musica_id
order by u.nome, m.musica;
