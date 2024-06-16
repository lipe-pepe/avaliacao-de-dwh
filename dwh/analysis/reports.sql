-- Relatório de Controle de Pátio
SELECT 
    P.Nome AS Patio,
    V.Grupo,
    V.Marca,
    V.Modelo,
    V.Mecanizacao,
    COUNT(*) AS TotalVeiculos
FROM 
    DimPatio P
JOIN 
    FatoLocacao FL ON P.PatioID = FL.PatioRetiradaID
JOIN 
    DimVeiculo V ON FL.VeiculoID = V.VeiculoID
WHERE 
    FL.Devolvido = FALSE
GROUP BY 
    P.Nome, V.Grupo, V.Marca, V.Modelo, V.Mecanizacao
ORDER BY 
    P.Nome, V.Grupo, V.Marca, V.Modelo, V.Mecanizacao;


-- Relatório de Controle das Locações
SELECT 
    V.Grupo,
    V.Marca,
    V.Modelo,
    V.Mecanizacao,
    COUNT(*) AS TotalAlugados,
    AVG(DATEDIFF(FL.DataDevolucaoPrevista, FL.DataRetirada)) AS TempoMedioLocacao,
    AVG(DATEDIFF(FL.DataDevolucaoPrevista, CURDATE())) AS TempoRestanteMedio
FROM 
    FatoLocacao FL
JOIN 
    DimVeiculo V ON FL.VeiculoID = V.VeiculoID
WHERE 
    FL.Devolvido = FALSE
GROUP BY 
    V.Grupo, V.Marca, V.Modelo, V.Mecanizacao
ORDER BY 
    V.Grupo, V.Marca, V.Modelo, V.Mecanizacao;


-- Relatório de Controle de Reservas
SELECT 
    V.Grupo,
    V.Marca,
    V.Modelo,
    COUNT(*) AS TotalReservas,
    P.Nome AS Patio,
    CASE 
        WHEN R.DataInicio BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY) THEN 'Semana que vem'
        WHEN R.DataInicio BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 1 MONTH) THEN 'Mês que vem'
        ELSE 'Futuro'
    END AS Periodo,
    C.Cidade
FROM 
    FatoLocacao FL
JOIN 
    DimReserva R ON FL.ReservaID = R.ReservaID
JOIN 
    DimVeiculo V ON FL.VeiculoID = V.VeiculoID
JOIN 
    DimPatio P ON FL.PatioRetiradaID = P.PatioID
JOIN 
    DimCliente C ON FL.ClienteID = C.ClienteID
GROUP BY 
    V.Grupo, V.Marca, V.Modelo, P.Nome, Periodo, C.Cidade
ORDER BY 
    V.Grupo, V.Marca, V.Modelo, P.Nome, Periodo, C.Cidade;


-- Relatório dos Tipos de Veículos Mais Alugados
SELECT 
    V.Grupo,
    V.Marca,
    V.Modelo,
    COUNT(*) AS TotalAlugados,
    C.Cidade
FROM 
    FatoLocacao FL
JOIN 
    DimVeiculo V ON FL.VeiculoID = V.VeiculoID
JOIN 
    DimCliente C ON FL.ClienteID = C.ClienteID
GROUP BY 
    V.Grupo, V.Marca, V.Modelo, C.Cidade
ORDER BY 
    TotalAlugados DESC, V.Grupo, V.Marca, V.Modelo, C.Cidade;

