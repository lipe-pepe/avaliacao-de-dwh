-- Análise de Dados por Cadeia de Markov (Cálculo da Matriz Estocástica de Movimentação entre Pátios)
WITH Movimentacao AS (
    SELECT
        PR.Nome AS PatioRetirada,
        PD.Nome AS PatioDevolucao,
        COUNT(F.LocacaoID) AS TotalMovimentacoes
    FROM
        FatoLocacao F
    JOIN 
        DimPatio PR ON F.PatioRetiradaID = PR.PatioID
    JOIN 
        DimPatio PD ON F.PatioDevolucaoID = PD.PatioID
    GROUP BY
        PR.Nome, PD.Nome
),
TotalMovimentacoes AS (
    SELECT
        PatioRetirada,
        SUM(TotalMovimentacoes) AS Total
    FROM
        Movimentacao
    GROUP BY
        PatioRetirada
)
SELECT
    M.PatioRetirada,
    M.PatioDevolucao,
    M.TotalMovimentacoes,
    TM.Total,
    (M.TotalMovimentacoes / TM.Total) * 100 AS PercentualMovimentacao
FROM
    Movimentacao M
JOIN
    TotalMovimentacoes TM ON M.PatioRetirada = TM.PatioRetirada
ORDER BY
    M.PatioRetirada, M.PatioDevolucao;