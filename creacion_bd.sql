-- 1. Tabla Municipio
CREATE TABLE Municipio (
    codigo_provincia INT,
    provincia VARCHAR(50),
    nombre_actual VARCHAR(100) PRIMARY KEY,
    poblacion_munipio INT,
    superficie FLOAT,
    altitud FLOAT
);

-- 2. Tabla Prediccion_UV_Ciudad
CREATE TABLE Prediccion_UV_Ciudad (
    id INT PRIMARY KEY,
    valor VARCHAR(50),
    uv INT,
);


-- 3. Tabla Prediccion_Eltiempo
CREATE TABLE Prediccion_Eltiempo (
    municipio VARCHAR(100) PRIMARY KEY,
    calidad_aire INT,
    temperatura_minima_media INT,
    temperatura_maxima_media INT,
    temperatura_media INT,
    prediccion_minima INT,
    prediccion_maxima INT
);


-- 4. Tabla Datos_Historicos
CREATE TABLE Datos_Historicos (
    municipio VARCHAR(100) PRIMARY KEY,
    temperatura_media FLOAT,
    temperatura_minima FLOAT,
    temperatura_maxima FLOAT,
    altura FLOAT,
    provincia VARCHAR(50),
    fecha DATE PRIMARY KEY
);


-- 5. Tabla Prediccion_AEMET
CREATE TABLE Prediccion_AEMET (
    municipio VARCHAR(100),
    provincia VARCHAR(50),
    temperatura_minima INT,
    temperatura_maxima INT,
    sensacion_termica_maxima FLOAT,
    sensacion_termica_minima FLOAT
);

-- 6. Tabla Provincias
CREATE TABLE Provincias (
    codigo_provincia INT PRIMARY KEY,
    nombre_provincia VARCHAR(50),
    comunidad_autonoma VARCHAR(50)
);

