CREATE VIEW historico_reproducao_usuarios AS
    SELECT u.usuario AS 'usuario', c.cancao AS 'nome'
    FROM SpotifyClone.HistoricoReproducao AS hr
    INNER JOIN SpotifyClone.Cancoes AS c
    ON hr.cancao_id = c.cancao_id
    INNER JOIN SpotifyClone.Usuarios AS u
    ON hr.usuario_id = u.usuario_id
    ORDER BY `usuario`, `nome`;
