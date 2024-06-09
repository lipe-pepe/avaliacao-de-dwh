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