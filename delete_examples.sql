
-- =============================
-- EXEMPLOS DE EXCLUSÃO
-- =============================

-- Excluir checklist de veículo específico
DELETE FROM CHECKLIST WHERE id_veiculo = 1;

-- Excluir motoristas sem contratos
DELETE FROM MOTORISTA
WHERE id_motorista NOT IN (SELECT id_motorista FROM CONTRATO);
