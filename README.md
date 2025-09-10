# 🗄️ Projeto FIAP – Enterprise Challenge - Sprint 3 - Reply

[![Grupo](https://img.shields.io/badge/Grupo-56-green)]()  
[![Turma](https://img.shields.io/badge/Turma-1TIAOB%2F2025-blue)]()  
[![Status](https://img.shields.io/badge/Status-Concluído-success)]()  

---  
## Fase 5  
Período: 04/08/2025 a 09/09/2025  

## 👨‍🎓 Integrantes:  
- Deivisson Gonçalves Lima – RM565095 – [deivisson.engtele@gmail.com](mailto:deivisson.engtele@gmail.com)  
- Omar Calil Abrão Mustafá Assem – RM561375 – [ocama12@gmail.com](mailto:ocama12@gmail.com)  
- Paulo Henrique de Sousa – RM564262 – [pauloo.sousa16@outlook.com](mailto:pauloo.sousa16@outlook.com)  
- Renan Danilo dos Santos Pereira – RM566175 – [renansantos4978@gmail.com](mailto:renansantos4978@gmail.com)  

---  

## 💡 Descrição  

Nesta fase do desafio em parceria com a **Hermes Reply**, avançamos para a criação de um **Banco de Dados relacional** para armazenar as leituras dos sensores, seguido da aplicação de um modelo de **Machine Learning** para classificação de condições ambientais em um **data center**.  

O objetivo foi transformar as leituras do sensor **DHT22** (coletadas pelo **ESP32**) em informações organizadas no banco, para então aplicar técnicas de **classificação supervisionada**, identificando situações **Normais**, de **Alerta** e **Críticas**.  

---  

## 🎯 Objetivos do Projeto  

* Modelar um **banco de dados relacional** para armazenamento das leituras.  
* Garantir integridade dos dados por meio de **chaves, índices e restrições**.  
* Criar scripts SQL para criação das tabelas e inserção de dados.  
* Simular a coleta de mais de **500 leituras por sensor**.  
* Exportar/gerar dataset compatível com o banco para uso em **Machine Learning**.  
* Treinar um modelo de **classificação** (Decision Tree) para rotular as condições ambientais.  
* Gerar **gráficos e métricas** para justificar o desempenho do modelo.  

---  

## 🗄️ Banco de Dados  

### 🔹 DER – Diagrama Entidade-Relacionamento  

- **sensors** → armazena informações sobre os sensores (nome, localização, data de criação).  
- **readings** → armazena leituras de temperatura e umidade com referência ao sensor.  

### 🔹 Scripts  
- `schema_oracle.sql` → criação das tabelas e restrições.  
- `test_data_oracle.sql` → inserção de dados de teste (5 leituras por sensor).  
- `generate_data_oracle.sql` → geração em massa (~600 leituras por sensor).  

### 🔹 Prints do Oracle Live SQL  
- Total de leituras inseridas.  
- Quantidade por sensor.  
- Leituras recentes do sensor "DHT22-Lab".  

---  

## 🧠 Machine Learning  

### 🔹 Problema escolhido  
- **Classificação**: Normal, Alerta ou Crítico.  
- Critérios:  
  - **Normal** → 18–27 °C e 40–60 %.  
  - **Alerta** → levemente fora da faixa.  
  - **Crítico** → ≥30 °C, ≤16 °C, umidade ≤30 % ou ≥70 %.  

### 🔹 Dataset  
- Arquivo: `readings_for_ml.csv`  
- Estrutura compatível com o banco (`sensor`, `recorded_at`, `temperature_c`, `humidity_pct`, `status`).  
- ~1800 linhas (600 por sensor).  

### 🔹 Modelo  
- Algoritmo: **DecisionTreeClassifier (Scikit-learn)**.  
- Acurácia: **>95%**.  
- Visualizações:  
  - Matriz de confusão.  
  - Árvore de decisão.  
  - Distribuição das classes.  
  - Scatter plot (Temp x Umidade).  

---  

## 💻 Estrutura do Projeto  

```
enterprise-challenge-reply/
├── docs/
│   ├── der.png                       # DER (draw.io)
│   ├── confusion_matrix.png          # Matriz de confusão
│   ├── tree.png                      # Árvore de decisão
│   ├── distribuicao.png              # Gráfico de distribuição
│   └── scatter.png                   # Scatter plot Temp x Umidade
├── schema_oracle.sql                 # Estrutura do banco
├── test_data_oracle.sql              # Inserts de teste
├── generate_data_oracle.sql          # Geração de massa de dados
├── readings_for_ml.csv               # Dataset para ML
├── notebook_ml.ipynb                 # Notebook de Machine Learning
└── README.md                         # Documentação principal
```  

---  

## 📺 Vídeo  

O vídeo com explicação do projeto (até 5 minutos) está disponível no YouTube (não listado):  
👉 [Link do vídeo aqui](https://youtu.be/osxKi5AvWt0)  

---  

## ✅ Status Final  

Entrega concluída com:
- Banco de Dados estruturado, testado e funcional.  
- Machine Learning aplicado com métricas e gráficos.  
- Documentação e vídeo preparados conforme requisitos da atividade.  

---  
