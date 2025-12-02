-- UPDATES
UPDATE VEICULO 
SET status = 'Alugado' 
WHERE id_veiculo = 1;

UPDATE MOTORISTA 
SET telefone = '(31) 91234-5678'
WHERE cpf = '999.888.777-66';

UPDATE VEICULO
SET status = 'Disponível', km_atual = 45050
WHERE id_veiculo = 3;

-- DELETES
INSERT INTO MANUTENCAO (id_veiculo, tipo_manutencao, data_manutencao, km_realizada, descricao, custo) 
VALUES (2, 'Erro', '2023-01-01', 0, 'Registro lançado errado', 0.00);

DELETE FROM MANUTENCAO 
WHERE tipo_manutencao = 'Erro' AND custo = 0.00;

INSERT INTO BOLETO (id_contrato, data_emissao, data_vencimento, valor, status_boleto)
VALUES (2, '2020-01-01', '2020-01-10', 100.00, 'Pendente');

DELETE FROM BOLETO 
WHERE status_boleto = 'Pendente' AND YEAR(data_vencimento) < 2022;

DELETE FROM MOTORISTA 
WHERE nome = 'Carlos Pereira' 
AND id_motorista NOT IN (SELECT id_motorista FROM CONTRATO);
