
-- Selecionar todos os veículos
SELECT * FROM VEICULO;

-- Contratos ativos
SELECT c.*, m.nome, v.placa
FROM CONTRATO c
JOIN MOTORISTA m ON m.id_motorista = c.id_motorista
JOIN VEICULO v ON v.id_veiculo = c.id_veiculo
WHERE c.status_contrato = 'Ativo';

-- Checklist por veículo
SELECT v.placa, ch.*
FROM CHECKLIST ch
JOIN VEICULO v ON v.id_veiculo = ch.id_veiculo;
