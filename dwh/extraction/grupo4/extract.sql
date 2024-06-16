-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739


INSERT INTO Stage_Clientes (ID, Nome, CNH, ExpiracaoCNH, CPF_CNPJ, PessoaFisica, Endereco, Telefone, Email, Created_at, Updated_at)
SELECT ID, Nome, CNH, ExpiracaoCNH, CPF_CNPJ, PessoaFisica, Endereco, Telefone, Email, Created_at, Updated_at
FROM grupo4_schema.Clientes;


INSERT INTO Stage_Veiculo (ID, Placa, Chassis, Grupo, Marca, Modelo, Cor, ArCondicionado, MecanizacaoAutomatica, Cadeirinha, Largura, Comprimento, Foto, Prontuario, Created_at, Updated_at)
SELECT ID, Placa, Chassis, Grupo, Marca, Modelo, Cor, ArCondicionado, MecanizacaoAutomatica, Cadeirinha, Largura, Comprimento, Foto, Prontuario, Created_at, Updated_at
FROM grupo4_schema.Veiculo;


INSERT INTO Stage_Reservas (ID, ClienteId, VeiculoId, PatioId, DataReserva, DataPrevistaRetirada, DataPrevistaDevolucao, CarroRetirado, ValorReserva, Created_at, Updated_at)
SELECT ID, ClienteId, VeiculoId, PatioId, DataReserva, DataPrevistaRetirada, DataPrevistaDevolucao, CarroRetirado, ValorReserva, Created_at, Updated_at
FROM grupo4_schema.Reservas;


INSERT INTO Stage_Locacao (ID, ClienteId, VeiculoId, PatioRetiradoId, PatioDevolucaoId, DataRetirada, DataDevolucao, Devolvido, Protecoes_Adicionais, EstadoEntrega, EstadoDevolucao, Created_at, Updated_at)
SELECT ID, ClienteId, VeiculoId, PatioRetiradoId, PatioDevolucaoId, DataRetirada, DataDevolucao, Devolvido, Protecoes_Adicionais, EstadoEntrega, EstadoDevolucao, Created_at, Updated_at
FROM grupo4_schema.Locacao;


INSERT INTO Stage_Patio (ID, Nome, Localizacao, Created_at, Updated_at)
SELECT ID, Nome, Localizacao, Created_at, Updated_at
FROM grupo4_schema.Patio;
