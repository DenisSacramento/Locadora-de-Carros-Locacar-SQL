
-- =============================
-- INSERÇÃO DE DADOS INICIAIS
-- =============================

INSERT INTO MOTORISTA (nome, cpf, telefone) VALUES
('João Silva', '123.456.789-00', '11999990000'),
('Maria Souza', '987.654.321-00', '11988887777'),
('Carlos Oliveira', '555.666.777-88', '11991112222');

INSERT INTO VEICULO (placa, modelo, marca, ano, categoria, km_atual, status) VALUES
('ABC1D23', 'Onix', 'Chevrolet', 2020, 'Hatch', 45000, 'Disponível'),
('XYZ9K88', 'HB20', 'Hyundai', 2019, 'Sedan', 60000, 'Manutenção'),
('BRA2E19', 'Cronos', 'Fiat', 2021, 'Sedan', 30000, 'Disponível');

INSERT INTO CONTRATO (id_motorista, id_veiculo, data_inicio, data_fim, valor_semanal, status_contrato) VALUES
(1, 1, '2025-01-10', NULL, 350.00, 'Ativo'),
(2, 3, '2025-02-01', '2025-02-28', 390.00, 'Finalizado');

INSERT INTO CHECKLIST (id_veiculo, data_check, pneu_ok, motor_ok, lataria_ok, observacoes, fotos_url) VALUES
(1, '2025-01-10', TRUE, TRUE, FALSE, 'Risco lateral', 'foto1.jpg,foto2.jpg'),
(3, '2025-02-01', TRUE, TRUE, TRUE, 'Sem observações', 'foto3.jpg');
