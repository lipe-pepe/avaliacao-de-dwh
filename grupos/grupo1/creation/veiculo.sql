-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

CREATE TABLE Veículo (
  VeiculoID INT PRIMARY KEY,
  Placa VARCHAR(10) NOT NULL UNIQUE,
  Marca VARCHAR(50) NOT NULL,
  Modelo VARCHAR(50) NOT NULL,
  Cor VARCHAR(20),
  Grupo VARCHAR(50) NOT NULL,
  ArCondicionado BOOLEAN NOT NULL,
  Cadeirinha BOOLEAN NOT NULL,
  Chassis VARCHAR(17) NOT NULL UNIQUE,
  Dimensoes VARCHAR(255),
  Acessorios JSON,
  Fotos JSON,
  EstadoConservacao TEXT,
  Revisoes TEXT,
  CaracteristicasRodagemSeguranca TEXT,
  Mecanizacao VARCHAR(20) CHECK (Mecanizacao IN ('Manual', 'Automática')),
);
