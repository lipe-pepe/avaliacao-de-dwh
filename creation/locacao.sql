-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Tavares, DRE: 120152739

CREATE TABLE Locacao (
  LocacaoID INT PRIMARY KEY,
  ReservaID INT NOT NULL,
  ClienteID INT NOT NULL,
  VeiculoID INT NOT NULL,
  CondutorID INT,
  Retirada TIMESTAMP NOT NULL,
  DevolucaoPrevista TIMESTAMP NOT NULL,
  DevolucaoRealizada TIMESTAMP,
  PatioRetiradaID INT NOT NULL,
  PatioDevolucaoID INT NOT NULL,
  EstadoEntrega TEXT,
  EstadoDevolucao TEXT,
  ProtecoesAdicionais JSON,
  ValorInicial DECIMAL(10, 2) NOT NULL,
  ValorFinal DECIMAL(10, 2),
  FOREIGN KEY (ReservaID) REFERENCES Reserva(ReservaID),
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
  FOREIGN KEY (VeiculoID) REFERENCES Veículo(VeiculoID),
  FOREIGN KEY (CondutorID) REFERENCES Condutor(CondutorID),
  FOREIGN KEY (PatioRetiradaID) REFERENCES Patio(PatioID),
  FOREIGN KEY (PatioDevolucaoID) REFERENCES Patio(PatioID)
);
