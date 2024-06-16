-- Carga das tabelas de fatos e dimensões do DWH:

INSERT INTO DimCliente (ClienteID, Nome, CPF_CNPJ, Endereco, Telefone, Email, Tipo)
SELECT DISTINCT ClienteID, Nome, CPF_CNPJ, Endereco, Telefone, Email, Tipo
FROM stage.Cliente;

INSERT INTO DimVeiculo (VeiculoID, Placa, Marca, Modelo, Cor, Grupo, ArCondicionado, Cadeirinha, Chassis, Dimensoes, Acessorios, Fotos, EstadoConservacao, Revisoes, RodagemSeguranca, Mecanizacao)
SELECT DISTINCT VeiculoID, Placa, Marca, Modelo, Cor, Grupo, ArCondicionado, Cadeirinha, Chassis, Dimensoes, Acessorios, Fotos, EstadoConservacao, Revisoes, RodagemSeguranca, Mecanizacao
FROM stage.Veiculo;

INSERT INTO DimPatio (PatioID, Nome, Endereco)
SELECT DISTINCT PatioID, Nome, Endereco
FROM stage.Patio;

INSERT INTO DimTempo (DataID, Data, Ano, Mes, Dia, DiaSemana, SemanaAno, Trimestre)
SELECT DISTINCT
    ROW_NUMBER() OVER (ORDER BY DataReserva) AS DataID,
    DataReserva AS Data,
    YEAR(DataReserva) AS Ano,
    MONTH(DataReserva) AS Mes,
    DAY(DataReserva) AS Dia,
    DAYNAME(DataReserva) AS DiaSemana,
    WEEK(DataReserva) AS SemanaAno,
    QUARTER(DataReserva) AS Trimestre
FROM stage.Reserva;

INSERT INTO DimReserva (ReservaID, DataReserva, DataInicio, DataFim, Grupo, ClienteID, VeiculoID, Status, Observacoes)
SELECT DISTINCT ReservaID, DataReserva, DataInicio, DataFim, Grupo, ClienteID, VeiculoID, Status, Observacoes
FROM stage.Reserva;

INSERT INTO DimCondutor (CondutorID, ClienteID, Nome, CNH, DataExpiracaoCNH)
SELECT DISTINCT CondutorID, ClienteID, Nome, CNH, DataExpiracaoCNH
FROM stage.Condutor;

INSERT INTO FatoLocacao (LocacaoID, ClienteID, VeiculoID, CondutorID, ReservaID, PatioRetiradaID, PatioDevolucaoID, DataRetiradaID, DataDevolucaoPrevistaID, DataDevolucaoRealizadaID, ValorInicial, ValorFinal)
SELECT
    L.LocacaoID,
    L.ClienteID,
    L.VeiculoID,
    L.CondutorID,
    L.ReservaID,
    L.PatioRetiradaID,
    L.PatioDevolucaoID,
    T1.DataID AS DataRetiradaID,
    T2.DataID AS DataDevolucaoPrevistaID,
    T3.DataID AS DataDevolucaoRealizadaID,
    L.ValorInicial,
    L.ValorFinal
FROM
    stage.Locacao L
JOIN DimTempo T1 ON L.Retirada = T1.Data
JOIN DimTempo T2 ON L.DevolucaoPrevista = T2.Data
JOIN DimTempo T3 ON L.DevolucaoRealizada = T3.Data;
