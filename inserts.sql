INSERT INTO MOTORISTA (nome, cpf, telefone, cnh, validade_cnh) VALUES
('João da Silva', '111.222.333-44', '(11) 99999-1111', '12345678900', '2026-12-31'),
('Maria Oliveira', '555.666.777-88', '(21) 98888-2222', '09876543211', '2025-05-20'),
('Carlos Pereira', '999.888.777-66', '(31) 97777-3333', '11223344556', '2024-10-10');

INSERT INTO VEICULO (placa, modelo, marca, ano, categoria, km_atual, status) VALUES
('ABC1D23', 'Onix', 'Chevrolet', 2022, 'Hatch', 25000, 'Disponível'),
('XYZ9876', 'HB20', 'Hyundai', 2023, 'Hatch', 10000, 'Disponível'),
('DEF4G56', 'Corolla', 'Toyota', 2021, 'Sedan', 45000, 'Manutenção');

INSERT INTO CONTRATO (id_motorista, id_veiculo, data_inicio, valor_semanal) VALUES
(1, 1, '2023-10-01', 450.00);

INSERT INTO CONTRATO (id_motorista, id_veiculo, data_inicio, data_fim, valor_semanal, status_contrato) VALUES
(2, 2, '2023-09-01', '2023-09-15', 500.00, 'Finalizado');

INSERT INTO CHECKLIST (id_contrato, tipo, data_checklist, km_registrada, observacoes) VALUES
(1, 'Retirada', '2023-10-01', 25000, 'Veículo sem avarias, tanque cheio.'),
(2, 'Retirada', '2023-09-01', 8000, 'Pequeno risco na porta esquerda.'),
(2, 'Devolução', '2023-09-15', 10000, 'Veículo devolvido conforme retirada.');

INSERT INTO MANUTENCAO (id_veiculo, tipo_manutencao, data_manutencao, km_realizada, descricao, custo) VALUES
(3, 'Preventiva', '2023-10-05', 45000, 'Troca de óleo e filtros, revisão de freios.', 350.00);

INSERT INTO BOLETO (id_contrato, data_emissao, data_vencimento, valor, status_boleto) VALUES
(1, '2023-10-01', '2023-10-08', 450.00, 'Pendente'),
(2, '2023-09-01', '2023-09-08', 500.00, 'Pago'),
(2, '2023-09-08', '2023-09-15', 500.00, 'Pago');

INSERT INTO PAGAMENTO (id_boleto, data_pagamento, valor_pago, metodo_pagamento) VALUES
(2, '2023-09-07', 500.00, 'Pix'),
(3, '2023-09-14', 500.00, 'Cartão');

