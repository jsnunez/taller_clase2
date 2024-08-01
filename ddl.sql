
DROP DATABASE localidades;
CREATE DATABASE localidades;
-- Conectar a la base de datos
\c localidades

-- Crear tabla país
CREATE TABLE pais (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Crear tabla departamento
CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais_id INTEGER,
    FOREIGN KEY (pais_id) REFERENCES pais(id)
);

-- Crear tabla municipio
CREATE TABLE municipio (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento_id INTEGER NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

-- Crear tabla localidades
CREATE TABLE localidades (    
    departamento_id INTEGER NOT NULL,   
    departamentoName VARCHAR(100),
    municipio_id INTEGER NOT NULL,      
    municipioName VARCHAR(100)
);


