-- Datos de radiación ultravioleta y calidad del aire en provincias de Cataluña
SELECT 
    m.nombre_actual AS Municipio, 
    p.nombre_provincia AS Provincia, 
    uv.uv AS Radiacion_UV, 
    et.calidad_aire AS Calidad_Aire
FROM Municipio m
JOIN Provincias p ON m.codigo_provincia = p.codigo_provincia
JOIN Prediccion_UV_Ciudad uv ON m.nombre_actual = uv.municipio
JOIN Prediccion_Eltiempo et ON m.nombre_actual = et.municipio
WHERE p.comunidad_autonoma = 'Cataluña';

-- Datos históricos de marzo del año pasado en la estación de Aguilar de Campoo (Palencia) de la AEMET en comparación con los datos históricos de eltiempo.es y su altura según AEMET y datos.gob.es
SELECT 
    h.municipio, 
    h.fecha,
    h.temperatura_media AS Temp_Media_Eltiempo_Hist,
    a.temperatura_minima AS Temp_Min_AEMET,
    a.temperatura_maxima AS Temp_Max_AEMET,
    h.altura AS Altura_AEMET_Historica,
    m.altitud AS Altura_Datos_Gob
FROM Datos_Historicos h
JOIN Municipio m ON h.municipio = m.nombre_actual
JOIN Prediccion_AEMET a ON h.municipio = a.municipio
WHERE h.municipio = 'Aguilar de Campoo' 
  AND h.fecha BETWEEN '2025-03-01' AND '2025-03-31';

-- Última predicción de temperatura de la AEMET y de eltiempo.es para municipios de más de 5.000 habitantes en la provincia de Valladolid
SELECT 
    m.nombre_actual AS Municipio,
    m.poblacion_munipio AS Poblacion,
    a.temperatura_minima AS Min_AEMET,
    a.temperatura_maxima AS Max_AEMET,
    et.prediccion_minima AS Min_Eltiempo,
    et.prediccion_maxima AS Max_Eltiempo
FROM Municipio m
JOIN Prediccion_AEMET a ON m.nombre_actual = a.municipio
JOIN Prediccion_Eltiempo et ON m.nombre_actual = et.municipio
WHERE m.provincia = 'Valladolid' 
  AND m.poblacion_munipio > 5000;