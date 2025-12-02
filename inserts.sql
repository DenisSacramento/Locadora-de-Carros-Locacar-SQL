
INSERT INTO MOTORISTA (nome, cpf, telefone) VALUES
('João Silva', '123.456.789-00', '11999999999'),
('Maria Souza', '987.654.321-00', '11988888888');

INSERT INTO VEICULO (placa, modelo, marca, ano, categoria, km_atual, status) VALUES
('ABC1D23', 'Onix', 'Chevrolet', 2020, 'Hatch', 45000, 'Disponível'),
('XYZ9K88', 'HB20', 'Hyundai', 2019, 'Sedan', 60000, 'Manutenção');

INSERT INTO CONTRATO (id_motorista, id_veiculo, data_inicio, data_fim, valor_semanal, status_contrato) VALUES
(1, 1, '2025-01-10', NULL, 350.00, 'Ativo');

INSERT INTO CHECKLIST (id_veiculo, data_check, pneu_ok, motor_ok, lataria_ok, fotos_url) VALUES
(1, '2025-01-10', TRUE, TRUE, FALSE, 'foto1.jpg,foto2.jpg');
