
-- Excluir checklist de um veículo
DELETE FROM CHECKLIST WHERE id_veiculo = 1;

-- Excluir contrato finalizado
DELETE FROM CONTRATO WHERE status_contrato = 'Finalizado';
