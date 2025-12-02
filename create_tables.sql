
-- =============================
-- CRIAÇÃO DAS TABELAS DO SISTEMA DE ALUGUEL DE VEÍCULOS
-- =============================

DROP TABLE IF EXISTS CHECKLIST;
DROP TABLE IF EXISTS CONTRATO;
DROP TABLE IF EXISTS VEICULO;
DROP TABLE IF EXISTS MOTORISTA;

CREATE TABLE MOTORISTA (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE VEICULO (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    categoria VARCHAR(30),
    km_atual INT DEFAULT 0,
    status VARCHAR(20) DEFAULT 'Disponível',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE CONTRATO (
    id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor_semanal DECIMAL(10,2) NOT NULL,
    status_contrato VARCHAR(20) DEFAULT 'Ativo',
    FOREIGN KEY (id_motorista) REFERENCES MOTORISTA(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);

CREATE TABLE CHECKLIST (
    id_checklist INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    data_check DATE NOT NULL,
    pneu_ok BOOLEAN,
    motor_ok BOOLEAN,
    lataria_ok BOOLEAN,
    observacoes TEXT,
    fotos_url TEXT,
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);
