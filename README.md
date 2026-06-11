# 🏨 NaraHoteis — Consultoria de Dados  
Diagnóstico e Painel Gerencial | Projeto Final UC2 — Analista de Dados  

---

## 📋 Sobre o Projeto  

A NaraHoteis é uma rede hoteleira com 12 unidades distribuídas em 4 regiões do estado do Rio de Janeiro.  

A diretoria identificou queda de receita em algumas unidades e solicitou uma consultoria de dados para:

- Auditar e tratar bases de dados exportadas de um sistema legado  
- Realizar análise estatística completa da operação  
- Construir painéis visuais para apoio à tomada de decisão  
- Estruturar um banco de dados relacional  
- Entregar um relatório gerencial no Power BI  

Este projeto simula um ambiente real de consultoria. O time foi responsável por identificar inconsistências, tratar os dados, analisar os resultados e entregar as soluções.

---

## 👥 Equipe  

Projeto desenvolvido por:  

- Caroline  
- Jonatas  
- Ícaro  

---

## 🗺️ Regiões e Unidades  

| Região               | Unidades |
|----------------------|----------|
| Capital              | Ipanema · Barra da Tijuca · Centro · Santa Teresa |
| Baixada Fluminense   | Nova Iguaçu Centro · Nova Iguaçu Park |
| Serra                | Petrópolis · Teresópolis · Friburgo |
| Costa Verde          | Paraty · Angra dos Reis · Mangaratiba |

---

## 🛠️ Tecnologias Utilizadas  

Python • Pandas • NumPy • Matplotlib • MySQL • Power BI • Jupyter Notebook • GitHub  

---

## 📚 Conhecimentos Aplicados  

- Pré-processamento de Dados  
- Estatística Descritiva  
- Análise de Outliers (IQR)  
- Correlação de Pearson  
- Regressão Linear Simples  
- Modelagem Relacional  
- Visualização de Dados  
- DAX (Power BI)  

---

## 📁 Estrutura do Repositório  

```
narahoteis-consultoria/
│
├── dados/
│   ├── brutos/                  
│   │   ├── reservas.csv
│   │   ├── unidades.csv
│   │   ├── tipos_quarto.csv
│   │   ├── clientes.csv
│   │   ├── canais_venda.csv
│   │   └── funcionarios.csv
│   │
│   └── tratados/                
│
├── notebook/
│   └── narahoteis_analise.ipynb
│
├── sql/
│   ├── criacao_banco.sql
│   └── consultas.sql
│
├── powerbi/
│   └── narahoteis_painel.pbix
│
└── README.md
```

---

## 🔄 Etapas do Projeto  

### 1️⃣ Pré-processamento em Python  

Auditoria completa das 6 bases de dados:  
- Identificação e tratamento de inconsistências  
- Padronização de campos  
- Conversão de tipos de dados  
- Tratamento de valores ausentes  
- Exportação das bases limpas  

---

### 2️⃣ Análise Estatística em Python  

Resposta a perguntas estratégicas da diretoria, incluindo:

- Distribuição de diárias  
- Detecção de outliers via IQR  
- Cálculo de RevPAR  
- Identificação de overbooking  
- Correlação de Pearson  
- Regressão linear simples  

---

### 3️⃣ Painel em Python — Matplotlib  

Desenvolvimento de painel com 4 quadrantes (2×2) contendo visualizações estratégicas para responder perguntas de negócio da rede hoteleira.

---

### 4️⃣ Banco de Dados — MySQL  

- Criação do banco `narahoteis_db`  
- Modelagem com 6 tabelas relacionadas  
- Definição de chaves primárias e estrangeiras  
- Consultas com `JOIN`  
- Importação das bases tratadas  

---

### 5️⃣ Painel Gerencial — Power BI  

- Conexão com os CSVs tratados  
- Indicadores de performance (KPIs)  
- Filtro por região  
- Comparativos temporais  
- Uso de funções DAX como `PREVIOUSMONTH` e `SAMEPERIODLASTYEAR`  

---

## 📊 Modelo Relacional  

```
reservas ──── unidades ──── funcionarios
   │
   ├──── tipos_quarto
   ├──── clientes
   └──── canais_venda
```

---

## 🏫 Contexto Acadêmico  

Projeto desenvolvido em **contexto acadêmico** como avaliação final da disciplina:

**UC2 — Criar e Manipular Dados Utilizando Matemática e Estatística**  

Curso: **Analista de Dados / Big Data Science**  
Instituição: **SENAC RJ**  

O projeto teve como objetivo aplicar, de forma prática e integrada, os conhecimentos técnicos adquiridos ao longo da unidade curricular.
