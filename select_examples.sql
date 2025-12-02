-- 1 - Veículos disponíveis
SELECT modelo, marca, ano, km_atual 
FROM VEICULO 
WHERE status = 'Disponível' 
ORDER BY ano DESC;

-- 2 - Contratos ativos com motorista e veículo
SELECT 
    C.id_contrato,
    M.nome AS Motorista,
    V.modelo AS Veiculo,
    V.placa,
    C.data_inicio,
    C.valor_semanal
FROM CONTRATO C
JOIN MOTORISTA M ON C.id_motorista = M.id_motorista
JOIN VEICULO V ON C.id_veiculo = V.id_veiculo
WHERE C.status_contrato = 'Ativo';

-- 3 - Total gasto em manutenção por veículo
SELECT 
    V.modelo,
    V.placa,
    SUM(M.custo) AS Total_Manutencao
FROM VEICULO V
JOIN MANUTENCAO M ON V.id_veiculo = M.id_veiculo
GROUP BY V.id_veiculo;

