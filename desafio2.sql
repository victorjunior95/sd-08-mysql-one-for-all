CREATE VIEW estatisticas_musicais AS
SELECT ( SELECT COUNT(*) FROM spotifyclone.songs ) AS 'cancoes', 
( SELECT COUNT(*) FROM spotifyclone.artistas ) AS 'artistas',
( SELECT COUNT(*) FROM spotifyclone.albuns ) AS 'albuns'
FROM dual;
