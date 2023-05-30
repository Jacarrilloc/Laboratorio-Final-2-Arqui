-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS persona_db;
USE persona_db;

-- Tabla persona
CREATE TABLE IF NOT EXISTS persona (
                                       cc INT NOT NULL PRIMARY KEY,
                                       nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    genero CHAR(1) NOT NULL,
    edad INT NULL
    );

-- Tabla profesion
CREATE TABLE IF NOT EXISTS profesion (
                                         id INT NOT NULL PRIMARY KEY,
                                         nom VARCHAR(90) NOT NULL,
    des TEXT NULL
    );

-- Tabla estudios
CREATE TABLE IF NOT EXISTS estudios (
                                        id_prof INT NOT NULL,
                                        cc_per INT NOT NULL,
                                        fecha DATE NULL,
                                        univer VARCHAR(50) NULL,
    PRIMARY KEY (id_prof, cc_per),
    CONSTRAINT fk_estudios_persona
    FOREIGN KEY (cc_per)
    REFERENCES persona (cc),
    CONSTRAINT fk_estudios_profesion
    FOREIGN KEY (id_prof)
    REFERENCES profesion (id)
    );

-- Tabla telefono
CREATE TABLE IF NOT EXISTS telefono (
    num VARCHAR(15) NOT NULL PRIMARY KEY,
    oper VARCHAR(45) NOT NULL,
    duenio INT NOT NULL,
    CONSTRAINT fk_telefono_persona
    FOREIGN KEY (duenio)
    REFERENCES persona (cc)
    );