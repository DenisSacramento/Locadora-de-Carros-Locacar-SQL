
CREATE TABLE MOTORISTA (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20)
);

CREATE TABLE VEICULO (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    categoria VARCHAR(30),
    km_atual INT,
    status VARCHAR(20)
);

CREATE TABLE CONTRATO (
    id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    id_motorista INT,
    id_veiculo INT,
    data_inicio DATE,
    data_fim DATE,
    valor_semanal DECIMAL(10,2),
    status_contrato VARCHAR(20),
    FOREIGN KEY (id_motorista) REFERENCES MOTORISTA(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);

CREATE TABLE CHECKLIST (
    id_checklist INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT,
    data_check DATE,
    pneu_ok BOOLEAN,
    motor_ok BOOLEAN,
    lataria_ok BOOLEAN,
    fotos_url TEXT,
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);
