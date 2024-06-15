-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

CREATE TABLE stage.Cliente (
  ClienteID INT PRIMARY KEY,
  Nome VARCHAR(255),
  CPF_CNPJ VARCHAR(20),
  Endereco VARCHAR(255),
  Telefone VARCHAR(20),
  Email VARCHAR(255),
  Tipo VARCHAR(10)
);

CREATE TABLE stage.Condutor (
  CondutorID INT PRIMARY KEY,
  ClienteID INT,
  Nome VARCHAR(255),
  CNH VARCHAR(20),
  DataExpiracaoCNH DATE
);

CREATE TABLE stage.Locacao (
  LocacaoID INT PRIMARY KEY,
  ReservaID INT,
  ClienteID INT,
  VeiculoID INT,
  CondutorID INT,
  Retirada TIMESTAMP,
  DevolucaoPrevista TIMESTAMP,
  DevolucaoRealizada TIMESTAMP,
  PatioRetiradaID INT,
  PatioDevolucaoID INT,
  EstadoEntrega TEXT,
  EstadoDevolucao TEXT,
  ProtecoesAdicionais JSON,
  ValorInicial DECIMAL(10, 2),
  ValorFinal DECIMAL(10, 2)
);

CREATE TABLE stage.Patio (
  PatioID INT PRIMARY KEY,
  Nome VARCHAR(255),
  Endereco VARCHAR(255)
);

CREATE TABLE stage.Reserva (
  ReservaID INT PRIMARY KEY,
  DataReserva DATE,
  DataInicio DATE,
  DataFim DATE,
  Grupo VARCHAR(50),
  ClienteID INT,
  VeiculoID INT,
  Status VARCHAR(20),
  Observacoes TEXT
);

CREATE TABLE stage.Veiculo (
  VeiculoID INT PRIMARY KEY,
  Placa VARCHAR(10),
  Marca VARCHAR(50),
  Modelo VARCHAR(50),
  Cor VARCHAR(20),
  Grupo VARCHAR(50),
  ArCondicionado BOOLEAN,
  Cadeirinha BOOLEAN,
  Chassis VARCHAR(17),
  Dimensoes VARCHAR(255),
  Acessorios JSON,
  Fotos JSON,
  EstadoConservacao TEXT,
  Revisoes TEXT,
  RodagemSeguranca TEXT,
  Mecanizacao VARCHAR(20)
);