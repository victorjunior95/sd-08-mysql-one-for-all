SELECT
COUNT(*) 'cancoes',
    (SELECT
		COUNT(*) FROM artistas) 'artistas',
		(SELECT COUNT(*) FROM albuns) 'albuns'
FROM cancoes;
    