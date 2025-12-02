# 🚗 Sistema de Locação de Veículos — Scripts SQL Completo

Este repositório contém toda a estrutura SQL do sistema de locação de veículos, incluindo:
- Criação das tabelas do banco de dados (DDL)
- Inserção de dados coerentes (INSERT)
- Consultas SQL (SELECT)
- Comandos de atualização (UPDATE)
- Remoção de dados com critérios (DELETE)
- Instruções completas de execução

O projeto segue boas práticas de modelagem relacional, integridade referencial e uso adequado de chaves estrangeiras.

---

## 📌 Tecnologias utilizadas

- **MySQL 8.x**
- Compatível com:
  - MySQL Workbench
  - DB-Fiddle
  - DBeaver

---

## 🗂 Estrutura dos arquivos


---

## ⚙️ Como executar o projeto

1. Abra seu MySQL Workbench ou DB-Fiddle.
2. Execute primeiro o arquivo: create_tables.sql
3. Depois execute: inserts.sql
4. Para consultar dados: selects.sql
5. Para realizar atualizações e exclusões: updates_deletes.sql

6. 
---

## 🧱 Modelo Lógico (Resumo)

Entidades principais:

- **MOTORISTA**
- **VEICULO**
- **CONTRATO**
- **CHECKLIST**
- **MANUTENCAO**
- **BOLETO**
- **PAGAMENTO**

Relacionamentos garantidos com chaves estrangeiras.

---

## 📥 INSERTS — Principais registros incluídos

As tabelas são populadas com dados realistas:

- Motoristas
- Veículos
- Contratos em uso e finalizados
- Checklists de retirada e devolução
- Manutenções preventivas
- Boletos gerados
- Pagamentos realizados

---

## 🔍 SELECTS — Consultas incluídas

As consultas utilizam:

- `WHERE`
- `ORDER BY`
- `JOIN`
- `GROUP BY`
- `SUM`
- `FILTERS`

Exemplos implementados:

1. Veículos disponíveis ordenados por ano  
2. Contratos ativos com dados do motorista e veículo  
3. Total de manutenção por veículo  

---

## ✏️ UPDATE — Atualizações incluídas

Três atualizações reais:

1. Alterar status de veículo para “Alugado”  
2. Atualizar telefone de motorista específico  
3. Atualizar km e status após manutenção  

---

## 🗑 DELETE — Exclusões incluídas

Três exclusões seguras:

1. Remoção de manutenção lançada por engano  
2. Exclusão de boleto antigo e pendente  
3. Exclusão de motorista não associado a contratos  

---

## 📎 Objetivo da atividade

Este projeto demonstra:

✔ Domínio de DDL  
✔ Uso de DML completo (INSERT, SELECT, UPDATE, DELETE)  
✔ Integridade referencial  
✔ Relacionamentos 1:N e N:1  
✔ Scripts organizados para execução no MySQL  

---

## 👨‍💻 Autor

Projeto desenvolvido por Denis Sacramento
Para uso acadêmico e profissional.

---

## 📄 Licença

Este projeto é livre para uso educacional.



