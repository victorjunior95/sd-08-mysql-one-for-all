CREATE VIEW historico_reproducao_usuarios AS
SELECT
    u.nome_usuario AS usuario,
    c.nome_cancao AS nome
FROM
    usuario AS u,
    historico_reproducao As hr,
    cancao As c
WHERE
    u.id_usuario = hr.id_usuario
    AND c.id_cancao = hr.id_cancao
ORDER BY
    usuario,
    nome;
