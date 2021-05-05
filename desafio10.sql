DELIMITER $$
create function quantidade_musicas_no_historico(inId int)
returns int reads sql data
begin
declare quantidade_musicas int;
select count(*) from SpotifyClone.historico_reproducoes hr
where hr.usuario_id = inId into quantidade_musicas;
return quantidade_musicas;
end $$
DELIMITER ;
