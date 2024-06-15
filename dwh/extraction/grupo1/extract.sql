-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

INSERT INTO stage.Cliente (ClienteID, Nome, CPF_CNPJ, Endereco, Telefone, Email, Tipo)
SELECT ClienteID, Nome, CPF_CNPJ, Endereco, Telefone, Email, Tipo
FROM grupo1_schema.Cliente;

INSERT INTO stage.Condutor (CondutorID, ClienteID, Nome, CNH, DataExpiracaoCNH)
SELECT CondutorID, ClienteID, Nome, CNH, DataExpiracaoCNH
FROM grupo1_schema.Condutor;

INSERT INTO stage.Locacao (LocacaoID, ReservaID, ClienteID, VeiculoID, CondutorID, Retirada, DevolucaoPrevista, DevolucaoRealizada, PatioRetiradaID, PatioDevolucaoID, EstadoEntrega, EstadoDevolucao, ProtecoesAdicionais, ValorInicial, ValorFinal)
SELECT LocacaoID, ReservaID, ClienteID, VeiculoID, CondutorID, Retirada, DevolucaoPrevista, DevolucaoRealizada, PatioRetiradaID, PatioDevolucaoID, EstadoEntrega, EstadoDevolucao, ProtecoesAdicionais, ValorInicial, ValorFinal
FROM grupo1_schema.Locacao;

INSERT INTO stage.Patio (PatioID, Nome, Endereco)
SELECT PatioID, Nome, Endereco
FROM grupo1_schema.Patio;

INSERT INTO stage.Reserva (ReservaID, DataReserva, DataInicio, DataFim, Grupo, ClienteID, VeiculoID, Status, Observacoes)
SELECT ReservaID, DataReserva, DataInicio, DataFim, Grupo, ClienteID, VeiculoID, Status, Observacoes
FROM grupo1_schema.Reserva;

INSERT INTO stage.Veiculo (VeiculoID, Placa, Marca, Modelo, Cor, Grupo, ArCondicionado, Cadeirinha, Chassis, Dimensoes, Acessorios, Fotos, EstadoConservacao, Revisoes, RodagemSeguranca, Mecanizacao)
SELECT VeiculoID, Placa, Marca, Modelo, Cor, Grupo, ArCondicionado, Cadeirinha, Chassis, Dimensoes, Acessorios, Fotos, EstadoConservacao, Revisoes, RodagemSeguranca, Mecanizacao
FROM grupo1_schema.Veiculo;