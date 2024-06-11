-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Tavares, DRE: 120152739

CREATE TABLE Cliente (
  ClienteID INT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  CPF_CNPJ VARCHAR(20) NOT NULL UNIQUE,
  Endereco VARCHAR(255),
  Telefone VARCHAR(20),
  Email VARCHAR(255),
  Tipo VARCHAR(10) CHECK (Tipo IN ('Física', 'Jurídica'))
);
