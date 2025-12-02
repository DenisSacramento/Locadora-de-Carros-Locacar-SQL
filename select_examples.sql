
-- =============================
-- CONSULTAS MODELO
-- =============================

-- Todos os motoristas
SELECT * FROM MOTORISTA;

-- Todos os veículos
SELECT * FROM VEICULO;

-- Contratos ativos com nomes e placas
SELECT c.id_contrato, m.nome, v.placa, c.valor_semanal
FROM CONTRATO c
JOIN MOTORISTA m ON m.id_motorista = c.id_motorista
JOIN VEICULO v ON v.id_veiculo = c.id_veiculo
WHERE c.status_contrato = 'Ativo';

-- Histórico de checklist por veículo
SELECT v.placa, ch.*
FROM CHECKLIST ch
JOIN VEICULO v ON v.id_veiculo = ch.id_veiculo
ORDER BY ch.data_check DESC;
