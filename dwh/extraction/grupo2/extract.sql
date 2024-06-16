-- INTEGRANTES:
-- Alex Teixeira, DRE: 117036607
-- Felipe Augusto de Miranda Villela, DRE: 114080437
-- Felipe Pêpe da Silva Oliveira, DRE: 123589472
-- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
-- Karen Silva Pacheco, DRE: 123476904
-- Lucas Máximo Dantas, DRE: 118045112
-- Lucas Tavares, DRE: 120152739

INSERT INTO stage.Categoria (Cd_Categoria, Nm_Categoria, Vl_Valor_por_Dia)
SELECT Cd_Categoria, Nm_Categoria, Vl_Valor_por_Dia
FROM grupo2_schema.Categoria;

INSERT INTO stage.Cliente (Cd_Cliente, Nm_Nome, Ds_Tipo, Cd_CNPJ_CPF, Ds_Endereco, Nu_Telefone, Ds_Email, Nu_CNH, Dt_Validade_CNH)
SELECT Cd_Cliente, Nm_Nome, Ds_Tipo, Cd_CNPJ_CPF, Ds_Endereco, Nu_Telefone, Ds_Email, Nu_CNH, Dt_Validade_CNH
FROM grupo2_schema.Cliente;

INSERT INTO stage.Locacao (Cd_Locacao, Dt_Data_Retirada_Prevista, Dt_Data_Devolucao_Prevista, Dt_Data_Devolucao_Realizada, Dt_Data_Retirada_Realizada, Cd_Patio_Saida, Cd_Patio_Entrada, Cd_Cliente, Ds_Protecao_de_Farol, Ds_Protecao_de_Vidro)
SELECT Cd_Locacao, Dt_Data_Retirada_Prevista, Dt_Data_Devolucao_Prevista, Dt_Data_Devolucao_Realizada, Dt_Data_Retirada_Realizada, Cd_Patio_Saida, Cd_Patio_Entrada, Cd_Cliente, Ds_Protecao_de_Farol, Ds_Protecao_de_Vidro
FROM grupo2_schema.Locacao;

INSERT INTO stage.Patio (Cd_Patio, Nm_Patio)
SELECT Cd_Patio, Nm_Patio
FROM grupo2_schema.Patio;

INSERT INTO stage.Reserva (Cd_Reserva, Dt_Reserva, Dt_Entrega, Dt_Devolucao, Cd_Cliente, Cd_Carro, Cd_Situacao)
SELECT Cd_Reserva, Dt_Reserva, Dt_Entrega, Dt_Devolucao, Cd_Cliente, Cd_Carro, Cd_Situacao
FROM grupo2_schema.Reserva;

INSERT INTO stage.Veiculo (Cd_Carro, Nm_Marca, Nm_Motor, Ds_Mecanizacao, Nm_Modelo, Ds_Ar_Condicionado, Nm_Cor, Nu_Altura, Nu_Tamanho, Nu_Largura, Ds_Foto, Nu_Placa, Nu_Chassi, Nm_Combustivel, Nm_Pneu, Cd_Categoria, Nu_Pressao_Pneu)
SELECT Cd_Carro, Nm_Marca, Nm_Motor, Ds_Mecanizacao, Nm_Modelo, Ds_Ar_Condicionado, Nm_Cor, Nu_Altura, Nu_Tamanho, Nu_Largura, Ds_Foto, Nu_Placa, Nu_Chassi, Nm_Combustivel, Nm_Pneu, Cd_Categoria, Nu_Pressao_Pneu
FROM grupo2_schema.Veiculo;