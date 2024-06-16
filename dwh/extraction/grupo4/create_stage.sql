-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739


CREATE TABLE stage.Clientes (
    ID INT,
    Nome VARCHAR(255),
    CNH VARCHAR(20),
    ExpiracaoCNH DATE,
    CPF_CNPJ VARCHAR(20),
    PessoaFisica BOOLEAN,
    Endereco TEXT,
    Telefone VARCHAR(15),
    Email VARCHAR(255),
    Created_at TIMESTAMP,
    Updated_at TIMESTAMP
);


CREATE TABLE stage.Veiculo (
    ID INT,
    Placa VARCHAR(10),
    Chassis VARCHAR(50),
    Grupo VARCHAR(50),
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Cor VARCHAR(20),
    ArCondicionado BOOLEAN,
    MecanizacaoAutomatica BOOLEAN,
    Cadeirinha BOOLEAN,
    Largura INT,
    Comprimento INT,
    Foto VARCHAR(255),
    Prontuario TEXT,
    Created_at TIMESTAMP,
    Updated_at TIMESTAMP
);


CREATE TABLE stage.Reservas (
    ID INT,
    ClienteId INT,
    VeiculoId INT,
    PatioId INT,
    DataReserva DATE,
    DataPrevistaRetirada DATE,
    DataPrevistaDevolucao DATE,
    CarroRetirado BOOLEAN,
    ValorReserva DECIMAL(10, 2),
    Created_at TIMESTAMP,
    Updated_at TIMESTAMP
);


CREATE TABLE stage.Locacao (
    ID INT,
    ClienteId INT,
    VeiculoId INT,
    PatioRetiradoId INT,
    PatioDevolucaoId INT,
    DataRetirada DATE,
    DataDevolucao DATE,
    Devolvido BOOLEAN,
    Protecoes_Adicionais TEXT,
    EstadoEntrega TEXT,
    EstadoDevolucao TEXT,
    Created_at TIMESTAMP,
    Updated_at TIMESTAMP
);


CREATE TABLE stage.Patio (
    ID INT,
    Nome VARCHAR(50),
    Localizacao TEXT,
    Created_at TIMESTAMP,
    Updated_at TIMESTAMP
);
