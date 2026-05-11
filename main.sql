-- gerado por IA, queria saber como é por desencargo por de consiencia
WITH RECURSIVE dimensoes AS (
    SELECT 0 AS n
    UNION ALL
    SELECT n + 1 FROM dimensoes WHERE n < 9
)
SELECT 
    string_agg(
        CASE 
            WHEN i.n = j.n OR i.n + j.n = 9 THEN '*' 
            ELSE ' ' 
        END, 
        '' ORDER BY j.n
    ) AS desenho_x
FROM dimensoes i
CROSS JOIN dimensoes j
GROUP BY i.n
ORDER BY i.n;

-- para rodar: cat seu_arquivo.sql | docker exec -i meu-postgres psql -U postgres -d postgres
