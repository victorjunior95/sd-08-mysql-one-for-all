CREATE VIEW cancoes_premium AS
    SELECT 
        CAN.cancao_nome AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historico AS HIS
            INNER JOIN
        SpotifyClone.cancoes AS CAN ON HIS.cancao_id = CAN.cancao_id
            AND HIS.usuario_id IN (2 , 3)
    GROUP BY cancao_nome
    ORDER BY cancao_nome;
