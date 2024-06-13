-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Tavares, DRE: 120152739

CREATE TABLE Reserva (
  ReservaID INT PRIMARY KEY,
  DataReserva DATE NOT NULL,
  DataInicio DATE NOT NULL,
  DataFim DATE NOT NULL,
  Grupo VARCHAR(50) NOT NULL,
  ClienteID INT NOT NULL,
  VeiculoID INT,
  Status VARCHAR(20) CHECK (Status IN ('Ativa', 'Concluída', 'Cancelada')),
  Observacoes TEXT,
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
  FOREIGN KEY (VeiculoID) REFERENCES Veículo(VeiculoID)
);
