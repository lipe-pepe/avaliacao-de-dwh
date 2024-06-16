-- Tabela de Fatos:
CREATE TABLE FatoLocacao (
    LocacaoID INT PRIMARY KEY,
    ClienteID INT,
    VeiculoID INT,
    CondutorID INT,
    ReservaID INT,
    PatioRetiradaID INT,
    PatioDevolucaoID INT,
    DataRetiradaID INT,
    DataDevolucaoPrevistaID INT,
    DataDevolucaoRealizadaID INT,
    ValorInicial DECIMAL(10, 2),
    ValorFinal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES DimCliente(ClienteID),
    FOREIGN KEY (VeiculoID) REFERENCES DimVeiculo(VeiculoID),
    FOREIGN KEY (CondutorID) REFERENCES DimCondutor(CondutorID),
    FOREIGN KEY (ReservaID) REFERENCES DimReserva(ReservaID),
    FOREIGN KEY (PatioRetiradaID) REFERENCES DimPatio(PatioID),
    FOREIGN KEY (PatioDevolucaoID) REFERENCES DimPatio(PatioID),
    FOREIGN KEY (DataRetiradaID) REFERENCES DimTempo(DataID),
    FOREIGN KEY (DataDevolucaoPrevistaID) REFERENCES DimTempo(DataID),
    FOREIGN KEY (DataDevolucaoRealizadaID) REFERENCES DimTempo(DataID)
);

-- Tabelas de Dimensões:

CREATE TABLE DimCliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    CPF_CNPJ VARCHAR(20),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Email VARCHAR(255),
    Tipo VARCHAR(10)
);


CREATE TABLE DimVeiculo (
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


CREATE TABLE DimPatio (
    PatioID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255)
);


CREATE TABLE DimTempo (
    DataID INT PRIMARY KEY,
    Data DATE,
    Ano INT,
    Mes INT,
    Dia INT,
    DiaSemana VARCHAR(10),
    SemanaAno INT,
    Trimestre INT
);


CREATE TABLE DimReserva (
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


CREATE TABLE DimCondutor (
    CondutorID INT PRIMARY KEY,
    ClienteID INT,
    Nome VARCHAR(255),
    CNH VARCHAR(20),
    DataExpiracaoCNH DATE
);

