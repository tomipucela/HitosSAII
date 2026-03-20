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
    municipio VARCHAR(50) PRIMARY KEY,
    id INT,
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


---- INSERTS
-- 1. Tabla Municipio
INSERT INTO Municipio (codigo_provincia, provincia, nombre_actual, poblacion_munipio, superficie, altitud) VALUES
(1,'Araba/Álava','Amurrio',10313,9629.68,219),
(44,'Teruel','Andorra',7214,1413594.54,716);

-- 2. Tabla Prediccion_UV_Ciudad
INSERT INTO Prediccion_UV_Ciudad (id, valor, uv) VALUES
(02003, 'Albacete', 5),
(20069, 'Donostia-San Sebastián', 4);

-- 3. Tabla Prediccion_Eltiempo
INSERT INTO Prediccion_Eltiempo (municipio, calidad_aire, temperatura_minima_media, temperatura_maxima_media, temperatura_media, prediccion_minima, prediccion_maxima) VALUES
('Aguilar de Campoo',29,1,9,5,3,16),
('Guarromán',24,4,17,10,9,22);

-- 4. Tabla Datos_Historicos
INSERT INTO Datos_Historicos (municipio, temperatura_media, temperatura_minima, temperatura_maxima, altura, provincia, fecha) VALUES
('Aguilar de Campoo',8.7,1.0,16.4,910,'PALENCIA','2026-03-03'),
('Aguilar de Campoo',8.6,1.3,16.0,910,'PALENCIA','2026-03-04');

-- 5. Tabla Prediccion_AEMET
INSERT INTO Prediccion_AEMET (municipio, provincia, temperatura_minima, temperatura_maxima, sensacion_termica_maxima, sensacion_termica_minima) VALUES
('Aguilar de Campoo', 'Palencia', 1, 19, 0,19),
('Guarromán', 'Jaen', 25,10,25,10);

-- 6. Tabla Provincias
INSERT INTO Provincias (codigo_provincia, nombre_provincia, comunidad_autonoma) VALUES
(1, 'Álava', 'País Vasco'),
(44, 'Teruel', 'Aragón');