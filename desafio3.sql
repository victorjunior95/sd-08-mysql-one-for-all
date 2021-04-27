CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        A.nome AS 'usuario', C.nome AS 'nome'
    FROM
        SpotifyClone.usuario A
            JOIN
        SpotifyClone.historico_de_reproducao B ON A.usuario_id = B.usuario_id
            JOIN
        SpotifyClone.cancao C ON B.cancao_id = C.cancao_id
    ORDER BY A.nome , C.nome;
