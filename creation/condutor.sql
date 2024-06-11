-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Tavares, DRE: 120152739

CREATE TABLE Condutor (
  CondutorID INT PRIMARY KEY,
  ClienteID INT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  CNH VARCHAR(20) NOT NULL UNIQUE,
  DataExpiracaoCNH DATE NOT NULL,
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);
