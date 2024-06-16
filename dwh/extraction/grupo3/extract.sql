-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

INSERT INTO stage.Clientes (ID_Cliente, Nome, Tipo_Cliente, Documento, ID_Endereco, Telefone, Email, Data_Nascimento, CNH, Data_Validade_CNH, CNPJ_Empresa)
SELECT ID_Cliente, Nome, Tipo_Cliente, Documento, ID_Endereco, Telefone, Email, Data_Nascimento, CNH, Data_Validade_CNH, CNPJ_Empresa
FROM grupo3_schema.Clientes;

INSERT INTO stage.Veiculos (ID_Veículo, ID_Grupo, Placa, Marca, Modelo, Cor, Ar_Condicionado, Mecanização, Cadeirinha, Link_Fotos, Assentos, Tamanho_Mala, Carga_Maxima)
SELECT ID_Veículo, ID_Grupo, Placa, Marca, Modelo, Cor, Ar_Condicionado, Mecanização, Cadeirinha, Link_Fotos, Assentos, Tamanho_Mala, Carga_Maxima
FROM grupo3_schema.Veículos;

INSERT INTO stage.Grupos_Veículos (ID_Grupo, Nome_Grupo)
SELECT ID_Grupo, Nome_Grupo
FROM grupo3_schema.Grupos_Veículos;

INSERT INTO stage.Prontuario (ID_Prontuário, ID_Veículo, Data_Registro, Descrição_Manutenção, Estado_Conservação, Pressão_Pneus, Nível_Óleo)
SELECT ID_Prontuário, ID_Veículo, Data_Registro, Descrição_Manutenção, Estado_Conservação, Pressão_Pneus, Nível_Óleo
FROM grupo3_schema.Prontuário;

INSERT INTO stage.Patios (ID_Pátio, ID_Endereco, Capacidade)
SELECT ID_Pátio, ID_Endereco, Capacidade
FROM grupo3_schema.Pátios;

INSERT INTO stage.Reservas (ID_Reserva, ID_Cliente, ID_Veículo, Data_Reserva, Data_Início, Data_Fim, Status_Reserva, Pátio_Retirada, Pátio_Devolução)
SELECT ID_Reserva, ID_Cliente, ID_Veículo, Data_Reserva, Data_Início, Data_Fim, Status_Reserva, Pátio_Retirada, Pátio_Devolução
FROM grupo3_schema.Reservas;

INSERT INTO stage.Locações (ID_Locação, ID_Reserva, Data_Retirada, Data_Devolução_Prevista, Data_Devolução_Realizada, Valor_Aluguel, Pátio_Retirada, Pátio_Devolução, Status_Locação)
SELECT ID_Locação, ID_Reserva, Data_Retirada, Data_Devolução_Prevista, Data_Devolução_Realizada, Valor_Aluguel, Pátio_Retirada, Pátio_Devolução, Status_Locação
FROM grupo3_schema.Locações;

INSERT INTO stage.Endereco (ID_Endereco, Rua, Numero, Bairro, Cidade, Estado, CEP, Complemento)
SELECT ID_Endereco, Rua, Numero, Bairro, Cidade, Estado, CEP, Complemento
FROM grupo3_schema.Endereco;