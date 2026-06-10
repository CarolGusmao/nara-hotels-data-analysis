CREATE DATABASE projetofinal;

USE projetofinal;

CREATE TABLE clientes (

id_cliente INT PRIMARY KEY,

nome VARCHAR(100) NOT NULL,

cidade_origem VARCHAR(100),

estado_origem VARCHAR(50),

faixa_etaria VARCHAR(50),

tipo_cliente VARCHAR(50)

);

CREATE TABLE unidades (

id_unidade INT PRIMARY KEY,

nome_unidade VARCHAR(100),

cidade VARCHAR(100),

regiao VARCHAR(100),

categoria_hotel VARCHAR(100),

num_quartos_total INT

);

CREATE TABLE tipos_quarto (

id_tipo_quarto INT PRIMARY KEY,

descricao VARCHAR(100),

capacidade_max INT,

valor_diaria_base DECIMAL(8,2)

);

CREATE TABLE canais_venda (

id_canal INT PRIMARY KEY,

nome_canal VARCHAR(100),

comissao_pct DECIMAL(8,2)

);

CREATE TABLE funcionarios (

id_funcionario INT PRIMARY KEY,

id_unidade INT,

nome VARCHAR(100),

cargo VARCHAR(100),

departamento VARCHAR(100),

salario DECIMAL(8,2),

data_admissao DATE,

    FOREIGN KEY (id_unidade)
        REFERENCES unidades(id_unidade)

);

CREATE TABLE reservas (

id_reserva INT PRIMARY KEY,

id_unidade INT,
id_tipo_quarto INT,
id_cliente INT,
id_canal INT,

data_checkin DATE,

data_checkout DATE,

qtd_diarias INT,

num_hospedes INT,

avaliacao_hospede DECIMAL(8,2),

status_reserva VARCHAR(100),

forma_pagamento VARCHAR(100),

    FOREIGN KEY (id_unidade)
        REFERENCES unidades(id_unidade),

    FOREIGN KEY (id_tipo_quarto)
        REFERENCES tipos_quarto(id_tipo_quarto),

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_canal)
        REFERENCES canais_venda(id_canal)
        
);

SET GLOBAL LOCAL_INFILE = 1;
LOAD DATA INFILE 'C:/Users/icaro.reboucas/Documents/PROJETO INTEGRADOR/BASES_LIMPAS/canais_clean.csv'
INTO TABLE canais_venda
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_canal, nome_canal, comissao_pct);

SELECT * FROM canais_venda;

LOAD DATA INFILE 'C:/Users/icaro.reboucas/Documents/PROJETO INTEGRADOR/BASES_LIMPAS/clientes_clean.csv'
INTO TABLE clientes
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_cliente, nome, cidade_origem, estado_origem, faixa_etaria, tipo_cliente);

SELECT * FROM clientes;

LOAD DATA INFILE 'C:/Users/icaro.reboucas/Documents/PROJETO INTEGRADOR/BASES_LIMPAS/tipos_clean.csv'
INTO TABLE tipos_quarto
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_tipo_quarto, descricao, capacidade_max, valor_diaria_base);

SELECT * FROM tipos_quarto;

LOAD DATA INFILE 'C:/Users/icaro.reboucas/Documents/PROJETO INTEGRADOR/BASES_LIMPAS/unidades_clean.csv'
INTO TABLE unidades
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_unidade, nome_unidade, cidade, regiao, categoria_hotel, num_quartos_total);

SELECT * FROM unidades

