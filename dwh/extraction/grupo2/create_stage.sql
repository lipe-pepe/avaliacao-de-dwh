-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

CREATE TABLE stage.Categoria (
    Cd_Categoria INTEGER NOT NULL PRIMARY KEY,
    Nm_Categoria VARCHAR(30) NULL,
    Vl_Valor_por_Dia DECIMAL(5,2) NULL
);

CREATE TABLE stage.Cliente (
    Cd_Cliente INTEGER NOT NULL PRIMARY KEY,
    Nm_Nome VARCHAR(18) NULL,
    Ds_Tipo VARCHAR(18) NULL,
    Cd_CNPJ_CPF VARCHAR(20) NULL,
    Ds_Endereco VARCHAR(255) NULL,
    Nu_Telefone VARCHAR(20) NULL,
    Ds_Email VARCHAR(80) NULL,
    Nu_CNH VARCHAR(20) NULL,
    Dt_Validade_CNH DATETIME NULL
);

CREATE TABLE stage.Locacao (
    Cd_Locacao INTEGER NOT NULL PRIMARY KEY,
    Dt_Data_Retirada_Prevista DATETIME NULL,
    Dt_Data_Devolucao_Prevista DATETIME NULL,
    Dt_Data_Devolucao_Realizada DATETIME NULL,
    Dt_Data_Retirada_Realizada DATETIME NULL,
    Cd_Patio_Saida INTEGER NULL,
    Cd_Patio_Entrada INTEGER NULL,
    Cd_Cliente INTEGER NULL,
    Ds_Protecao_de_Farol BIT NULL,
    Ds_Protecao_de_Vidro BIT NULL
);

CREATE TABLE stage.Patio (
    Cd_Patio INTEGER NOT NULL PRIMARY KEY,
    Nm_Patio VARCHAR(20) NULL
);

CREATE TABLE stage.Reserva (
    Cd_Reserva INTEGER NOT NULL PRIMARY KEY,
    Dt_Reserva DATETIME NULL,
    Dt_Entrega DATETIME NULL,
    Dt_Devolucao DATETIME NULL,
    Cd_Cliente INTEGER NULL,
    Cd_Carro INTEGER NULL,
    Cd_Situacao VARCHAR(20) NULL
);

CREATE TABLE stage.Veiculo (
    Cd_Carro INTEGER NOT NULL PRIMARY KEY,
    Nm_Marca VARCHAR(30) NULL,
    Nm_Motor VARCHAR(30) NULL,
    Ds_Mecanizacao VARCHAR(20) NULL,
    Nm_Modelo VARCHAR(20) NULL,
    Ds_Ar_Condicionado BIT NULL,
    Nm_Cor VARCHAR(20) NULL,
    Nu_Altura DECIMAL(5,1) NULL,
    Nu_Tamanho DECIMAL(38) NULL,
    Nu_Largura DECIMAL(5,1) NULL,
    Ds_Foto VARBINARY(MAX) NULL,
    Nu_Placa VARCHAR(15) NULL,
    Nu_Chassi VARCHAR(30) NULL,
    Nm_Combustivel VARCHAR(20) NULL,
    Nm_Pneu VARCHAR(30) NULL,
    Cd_Categoria INTEGER NULL,
    Nu_Pressao_Pneu INTEGER NULL
);