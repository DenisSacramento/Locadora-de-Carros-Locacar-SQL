
# 🚗 Sistema de Aluguel de Veículos — Banco de Dados SQL

Este repositório contém todos os scripts necessários para criar, popular e testar um banco de dados completo para um sistema de aluguel de carros.

---

## 🗂 Arquivos incluídos

```
create_tables.sql       → Criação completa das tabelas
inserts.sql             → Inserts iniciais
select_examples.sql     → Consultas prontas (SELECT)
delete_examples.sql     → Exemplos de DELETE seguros
```

---

## 🚀 Como Executar no DB-Fiddle

1. Abra **https://db-fiddle.com/**
2. Selecione **MySQL 8.0**
3. Cole os scripts **na seguinte ordem**:

### 1️⃣ create_tables.sql  
Cria toda a estrutura do banco.

### 2️⃣ inserts.sql  
Adiciona dados para testes.

### 3️⃣ select_examples.sql  
Rode consultas prontas para visualizar resultados.

### 4️⃣ delete_examples.sql  
Teste exclusões (opcional).

---

## 📊 DER (Descrição textual do modelo)

### **MOTORISTA**
- id_motorista (PK)
- nome  
- cpf  
- telefone  
- data_cadastro  

### **VEICULO**
- id_veiculo (PK)
- placa  
- modelo  
- marca  
- ano  
- categoria  
- km_atual  
- status  
- data_cadastro  

### **CONTRATO**
- id_contrato (PK)
- id_motorista (FK)
- id_veiculo (FK)
- data_inicio  
- data_fim  
- valor_semanal  
- status_contrato  

### **CHECKLIST**
- id_checklist (PK)
- id_veiculo (FK)
- data_check  
- pneu_ok  
- motor_ok  
- lataria_ok  
- observacoes  
- fotos_url  

---

## 📌 Objetivo do projeto
Facilitar:

- Estudos de modelagem  
- Testes para faculdades  
- Provas práticas  
- Projetos de portfólio  

---

## ✔ Autor
Projeto gerado automaticamente via ChatGPT.
