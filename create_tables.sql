SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS PAGAMENTO;
DROP TABLE IF EXISTS BOLETO;
DROP TABLE IF EXISTS MANUTENCAO;
DROP TABLE IF EXISTS CHECKLIST;
DROP TABLE IF EXISTS CONTRATO;
DROP TABLE IF EXISTS VEICULO;
DROP TABLE IF EXISTS MOTORISTA;

SET FOREIGN_KEY_CHECKS=1;

-- ================================
-- TABELA MOTORISTA
-- ================================
CREATE TABLE MOTORISTA (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    cnh VARCHAR(20) NOT NULL UNIQUE,
    validade_cnh DATE NOT NULL
);

-- ================================
-- TABELA VEICULO
-- ================================
CREATE TABLE VEICULO (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(8) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    km_atual INT NOT NULL DEFAULT 0,
    status VARCHAR(20) NOT NULL DEFAULT 'Disponível'
);

-- ================================
-- TABELA CONTRATO
-- ================================
CREATE TABLE CONTRATO (
    id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor_semanal DECIMAL(10,2) NOT NULL,
    status_contrato VARCHAR(20) NOT NULL DEFAULT 'Ativo',
    FOREIGN KEY (id_motorista) REFERENCES MOTORISTA(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);

-- ================================
-- TABELA CHECKLIST
-- ================================
CREATE TABLE CHECKLIST (
    id_checklist INT AUTO_INCREMENT PRIMARY KEY,
    id_contrato INT NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    data_checklist DATE NOT NULL,
    km_registrada INT NOT NULL,
    fotos TEXT,
    observacoes TEXT,
    FOREIGN KEY (id_contrato) REFERENCES CONTRATO(id_contrato)
);

-- ================================
-- TABELA MANUTENCAO
-- ================================
CREATE TABLE MANUTENCAO (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    tipo_manutencao VARCHAR(50) NOT NULL,
    data_manutencao DATE NOT NULL,
    km_realizada INT NOT NULL,
    descricao TEXT NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);

-- ================================
-- TABELA BOLETO
-- ================================
CREATE TABLE BOLETO (
    id_boleto INT AUTO_INCREMENT PRIMARY KEY,
    id_contrato INT NOT NULL,
    data_emissao DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status_boleto VARCHAR(20) NOT NULL DEFAULT 'Pendente',
    FOREIGN KEY (id_contrato) REFERENCES CONTRATO(id_contrato)
);

-- ================================
-- TABELA PAGAMENTO
-- ================================
CREATE TABLE PAGAMENTO (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_boleto INT NOT NULL UNIQUE,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    metodo_pagamento VARCHAR(30) NOT NULL,
    comprovante TEXT,
    FOREIGN KEY (id_boleto) REFERENCES BOLETO(id_boleto)
);

