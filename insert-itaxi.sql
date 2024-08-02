CREATE DATABASE itaxi;
USE itaxi;

CREATE TABLE cliente(
id VARCHAR(4),
nome VARCHAR(80),
PRIMARY KEY(id)
);

CREATE TABLE cliente_particular(
id VARCHAR(4),
cpf VARCHAR(14),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE cliente_empresa(
id VARCHAR(4),
cnpj VARCHAR(18),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE taxi(
placa VARCHAR(7),
marca VARCHAR(30),
modelo VARCHAR(30),
anofab INTEGER,
PRIMARY KEY(placa)
);

CREATE TABLE corrida(
cliid VARCHAR(4),
placa VARCHAR(7),
dataPedido DATE,
PRIMARY KEY(cliid, placa, dataPedido),
FOREIGN KEY(cliid) REFERENCES cliente(id),
FOREIGN KEY(placa) REFERENCES taxi(placa)
);

-- Inserir dados na tabela cliente
INSERT INTO cliente (id, nome) VALUES
('1', 'Gabriela'),
('2', 'Sol'),
('3', 'Henrique'),
('4', 'Nelson'),
('5', 'Pedro');

-- Inserir dados na tabela cliente_particular
INSERT INTO cliente_particular (id, cpf) VALUES
('1', '123.456.789-00'),
('2', '987.654.321-00'),
('3', '456.789.123-00');

-- Inserir dados na tabela cliente_empresa
INSERT INTO cliente_empresa (id, cnpj) VALUES
('1', '12.345.678/0001-00'),
('2', '98.765.432/0001-00');

-- Inserir dados na tabela taxi
INSERT INTO public.taxi (placa, marca, modelo, anofab) VALUES
('ABC1234', 'Fiat', 'Uno', 2020),
('XYZ5678', 'Chevrolet', 'Onix', 2021),
('DEF2345', 'Volkswagen', 'Gol', 2019),
('GHI6789', 'Ford', 'Ka', 2022),
('JKL3456', 'Renault', 'Sandero', 2018);

-- Inserir dados na tabela corrida
INSERT INTO public.corrida (cliid, placa, datapedido) VALUES
(1, 'ABC1234', '2024-07-01'),
(2, 'XYZ5678', '2024-07-02'),
(1, 'DEF2345', '2024-07-03'),
(3, 'GHI6789', '2024-07-04'),
(2, 'JKL3456', '2024-07-05');

